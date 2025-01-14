
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_18__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_17__ {TYPE_2__* parent; struct device_node* of_node; } ;
struct TYPE_19__ {int retries; TYPE_1__ dev; struct hix5hd2_i2c_priv* algo_data; int * algo; int owner; int name; } ;
struct hix5hd2_i2c_priv {int freq; int clk; TYPE_2__* dev; TYPE_8__ adap; int msg_complete; int lock; int regs; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int HIX5I2C_MAX_FREQ ;
 int IORESOURCE_MEM ;
 int IRQF_NO_SUSPEND ;
 scalar_t__ IS_ERR (int ) ;
 int MSEC_PER_SEC ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_name (TYPE_2__*) ;
 int dev_warn (TYPE_2__*,char*,unsigned int) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct hix5hd2_i2c_priv* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct hix5hd2_i2c_priv*) ;
 int hix5hd2_i2c_algorithm ;
 int hix5hd2_i2c_init (struct hix5hd2_i2c_priv*) ;
 int hix5hd2_i2c_irq ;
 int i2c_add_adapter (TYPE_8__*) ;
 int i2c_set_adapdata (TYPE_8__*,struct hix5hd2_i2c_priv*) ;
 int init_completion (int *) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,unsigned int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct hix5hd2_i2c_priv*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_2__*,int ) ;
 int pm_runtime_set_suspended (TYPE_2__*) ;
 int pm_runtime_use_autosuspend (TYPE_2__*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int hix5hd2_i2c_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct hix5hd2_i2c_priv *priv;
 struct resource *mem;
 unsigned int freq;
 int irq, ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 if (of_property_read_u32(np, "clock-frequency", &freq)) {

  priv->freq = 100000;
 } else {
  if (freq > HIX5I2C_MAX_FREQ) {
   priv->freq = HIX5I2C_MAX_FREQ;
   dev_warn(priv->dev, "use max freq %d instead\n",
     HIX5I2C_MAX_FREQ);
  } else {
   priv->freq = freq;
  }
 }

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->regs = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(priv->regs))
  return PTR_ERR(priv->regs);

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0) {
  dev_err(&pdev->dev, "cannot find HS-I2C IRQ\n");
  return irq;
 }

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(&pdev->dev, "cannot get clock\n");
  return PTR_ERR(priv->clk);
 }
 clk_prepare_enable(priv->clk);

 strlcpy(priv->adap.name, "hix5hd2-i2c", sizeof(priv->adap.name));
 priv->dev = &pdev->dev;
 priv->adap.owner = THIS_MODULE;
 priv->adap.algo = &hix5hd2_i2c_algorithm;
 priv->adap.retries = 3;
 priv->adap.dev.of_node = np;
 priv->adap.algo_data = priv;
 priv->adap.dev.parent = &pdev->dev;
 i2c_set_adapdata(&priv->adap, priv);
 platform_set_drvdata(pdev, priv);
 spin_lock_init(&priv->lock);
 init_completion(&priv->msg_complete);

 hix5hd2_i2c_init(priv);

 ret = devm_request_irq(&pdev->dev, irq, hix5hd2_i2c_irq,
          IRQF_NO_SUSPEND, dev_name(&pdev->dev), priv);
 if (ret != 0) {
  dev_err(&pdev->dev, "cannot request HS-I2C IRQ %d\n", irq);
  goto err_clk;
 }

 pm_runtime_set_autosuspend_delay(priv->dev, MSEC_PER_SEC);
 pm_runtime_use_autosuspend(priv->dev);
 pm_runtime_set_active(priv->dev);
 pm_runtime_enable(priv->dev);

 ret = i2c_add_adapter(&priv->adap);
 if (ret < 0)
  goto err_runtime;

 return ret;

err_runtime:
 pm_runtime_disable(priv->dev);
 pm_runtime_set_suspended(priv->dev);
err_clk:
 clk_disable_unprepare(priv->clk);
 return ret;
}
