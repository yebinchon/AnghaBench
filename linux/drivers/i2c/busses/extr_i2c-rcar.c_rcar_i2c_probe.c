
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; struct device* parent; } ;
struct i2c_adapter {int retries; int name; int * quirks; int * bus_recovery_info; TYPE_1__ dev; int class; int * algo; int nr; } ;
struct rcar_i2c_priv {int devtype; int irq; int flags; void* rstc; void* dma_tx; void* dma_rx; int dma_direction; int sg; struct i2c_adapter adap; int wait; void* io; int res; void* clk; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; int name; int id; } ;
struct i2c_timings {int dummy; } ;
typedef enum rcar_i2c_type { ____Placeholder_rcar_i2c_type } rcar_i2c_type ;


 int BUILD_BUG_ON_MSG (int,char*) ;
 int DMA_NONE ;
 int ENOMEM ;
 int ENOTSUPP ;
 int EPROBE_DEFER ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int I2C_CLASS_DEPRECATED ;
 scalar_t__ I2C_RCAR_GEN3 ;
 int ID_P_PM_BLOCKED ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int RCAR_MIN_DMA_LEN ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 void* devm_clk_get (struct device*,int *) ;
 void* devm_ioremap_resource (struct device*,int ) ;
 struct rcar_i2c_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct rcar_i2c_priv*) ;
 void* devm_reset_control_get_exclusive (struct device*,int *) ;
 int i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int i2c_parse_fw_timings (struct device*,struct i2c_timings*,int) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct rcar_i2c_priv*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rcar_i2c_priv*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int rcar_i2c_algo ;
 int rcar_i2c_bri ;
 int rcar_i2c_clock_calculate (struct rcar_i2c_priv*,struct i2c_timings*) ;
 int rcar_i2c_irq ;
 int rcar_i2c_quirks ;
 int reset_control_status (void*) ;
 int sg_init_table (int *,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int rcar_i2c_probe(struct platform_device *pdev)
{
 struct rcar_i2c_priv *priv;
 struct i2c_adapter *adap;
 struct device *dev = &pdev->dev;
 struct i2c_timings i2c_t;
 int ret;


 BUILD_BUG_ON_MSG(RCAR_MIN_DMA_LEN < 3, "Invalid min DMA length");

 priv = devm_kzalloc(dev, sizeof(struct rcar_i2c_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(dev, "cannot get clock\n");
  return PTR_ERR(priv->clk);
 }

 priv->res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 priv->io = devm_ioremap_resource(dev, priv->res);
 if (IS_ERR(priv->io))
  return PTR_ERR(priv->io);

 priv->devtype = (enum rcar_i2c_type)of_device_get_match_data(dev);
 init_waitqueue_head(&priv->wait);

 adap = &priv->adap;
 adap->nr = pdev->id;
 adap->algo = &rcar_i2c_algo;
 adap->class = I2C_CLASS_DEPRECATED;
 adap->retries = 3;
 adap->dev.parent = dev;
 adap->dev.of_node = dev->of_node;
 adap->bus_recovery_info = &rcar_i2c_bri;
 adap->quirks = &rcar_i2c_quirks;
 i2c_set_adapdata(adap, priv);
 strlcpy(adap->name, pdev->name, sizeof(adap->name));

 i2c_parse_fw_timings(dev, &i2c_t, 0);


 sg_init_table(&priv->sg, 1);
 priv->dma_direction = DMA_NONE;
 priv->dma_rx = priv->dma_tx = ERR_PTR(-EPROBE_DEFER);


 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);
 ret = rcar_i2c_clock_calculate(priv, &i2c_t);
 if (ret < 0)
  goto out_pm_put;

 if (priv->devtype == I2C_RCAR_GEN3) {
  priv->rstc = devm_reset_control_get_exclusive(&pdev->dev, ((void*)0));
  if (!IS_ERR(priv->rstc)) {
   ret = reset_control_status(priv->rstc);
   if (ret < 0)
    priv->rstc = ERR_PTR(-ENOTSUPP);
  }
 }


 if (of_property_read_bool(dev->of_node, "multi-master"))
  priv->flags |= ID_P_PM_BLOCKED;
 else
  pm_runtime_put(dev);


 priv->irq = platform_get_irq(pdev, 0);
 ret = devm_request_irq(dev, priv->irq, rcar_i2c_irq, 0, dev_name(dev), priv);
 if (ret < 0) {
  dev_err(dev, "cannot get irq %d\n", priv->irq);
  goto out_pm_disable;
 }

 platform_set_drvdata(pdev, priv);

 ret = i2c_add_numbered_adapter(adap);
 if (ret < 0)
  goto out_pm_disable;

 dev_info(dev, "probed\n");

 return 0;

 out_pm_put:
 pm_runtime_put(dev);
 out_pm_disable:
 pm_runtime_disable(dev);
 return ret;
}
