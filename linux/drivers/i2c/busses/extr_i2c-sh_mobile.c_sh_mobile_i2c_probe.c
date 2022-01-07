
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int retries; int nr; int name; TYPE_1__ dev; int * quirks; int * algo; int owner; } ;
struct sh_mobile_i2c_data {int clks_per_count; int bus_speed; int wait; int lock; struct i2c_adapter adap; int dma_tx; int dma_rx; int dma_direction; int sg; int flags; int reg; struct resource* res; TYPE_2__* dev; int clk; } ;
struct sh_mobile_dt_config {int clks_per_count; int (* setup ) (struct sh_mobile_i2c_data*) ;} ;
struct resource {int dummy; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int name; int id; } ;


 int DMA_NONE ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IIC_FLAG_HAS_ICIC67 ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int STANDARD_MODE ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*,int ,int ) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct sh_mobile_i2c_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct sh_mobile_i2c_data*) ;
 int init_waitqueue_head (int *) ;
 struct sh_mobile_dt_config* of_device_get_match_data (TYPE_2__*) ;
 int of_property_read_u32 (int ,char*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sh_mobile_i2c_data*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_get_sync (TYPE_2__*) ;
 int pm_runtime_put_sync (TYPE_2__*) ;
 int resource_size (struct resource*) ;
 int sg_init_table (int *,int) ;
 int sh_mobile_i2c_algorithm ;
 int sh_mobile_i2c_hook_irqs (struct platform_device*,struct sh_mobile_i2c_data*) ;
 int sh_mobile_i2c_init (struct sh_mobile_i2c_data*) ;
 int sh_mobile_i2c_quirks ;
 int sh_mobile_i2c_release_dma (struct sh_mobile_i2c_data*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,int ,int) ;
 int stub1 (struct sh_mobile_i2c_data*) ;

__attribute__((used)) static int sh_mobile_i2c_probe(struct platform_device *dev)
{
 struct sh_mobile_i2c_data *pd;
 struct i2c_adapter *adap;
 struct resource *res;
 const struct sh_mobile_dt_config *config;
 int ret;
 u32 bus_speed;

 pd = devm_kzalloc(&dev->dev, sizeof(struct sh_mobile_i2c_data), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;

 pd->clk = devm_clk_get(&dev->dev, ((void*)0));
 if (IS_ERR(pd->clk)) {
  dev_err(&dev->dev, "cannot get clock\n");
  return PTR_ERR(pd->clk);
 }

 ret = sh_mobile_i2c_hook_irqs(dev, pd);
 if (ret)
  return ret;

 pd->dev = &dev->dev;
 platform_set_drvdata(dev, pd);

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);

 pd->res = res;
 pd->reg = devm_ioremap_resource(&dev->dev, res);
 if (IS_ERR(pd->reg))
  return PTR_ERR(pd->reg);

 ret = of_property_read_u32(dev->dev.of_node, "clock-frequency", &bus_speed);
 pd->bus_speed = (ret || !bus_speed) ? STANDARD_MODE : bus_speed;
 pd->clks_per_count = 1;


 if (resource_size(res) > 0x17)
  pd->flags |= IIC_FLAG_HAS_ICIC67;

 pm_runtime_enable(&dev->dev);
 pm_runtime_get_sync(&dev->dev);

 config = of_device_get_match_data(&dev->dev);
 if (config) {
  pd->clks_per_count = config->clks_per_count;
  ret = config->setup(pd);
 } else {
  ret = sh_mobile_i2c_init(pd);
 }

 pm_runtime_put_sync(&dev->dev);
 if (ret)
  return ret;


 sg_init_table(&pd->sg, 1);
 pd->dma_direction = DMA_NONE;
 pd->dma_rx = pd->dma_tx = ERR_PTR(-EPROBE_DEFER);


 adap = &pd->adap;
 i2c_set_adapdata(adap, pd);

 adap->owner = THIS_MODULE;
 adap->algo = &sh_mobile_i2c_algorithm;
 adap->quirks = &sh_mobile_i2c_quirks;
 adap->dev.parent = &dev->dev;
 adap->retries = 5;
 adap->nr = dev->id;
 adap->dev.of_node = dev->dev.of_node;

 strlcpy(adap->name, dev->name, sizeof(adap->name));

 spin_lock_init(&pd->lock);
 init_waitqueue_head(&pd->wait);

 ret = i2c_add_numbered_adapter(adap);
 if (ret < 0) {
  sh_mobile_i2c_release_dma(pd);
  return ret;
 }

 dev_info(&dev->dev, "I2C adapter %d, bus speed %lu Hz\n", adap->nr, pd->bus_speed);

 return 0;
}
