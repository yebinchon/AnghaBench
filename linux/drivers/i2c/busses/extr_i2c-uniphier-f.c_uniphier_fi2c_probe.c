
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_4__ {int of_node; struct device* parent; } ;
struct TYPE_5__ {int * bus_recovery_info; int name; TYPE_1__ dev; int * algo; int owner; } ;
struct uniphier_fi2c_priv {unsigned long clk_cycle; int clk; TYPE_2__ adap; int lock; int comp; int membase; } ;
struct device {int of_node; } ;
struct platform_device {int name; struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 unsigned long UNIPHIER_FI2C_DEFAULT_SPEED ;
 unsigned long UNIPHIER_FI2C_MAX_SPEED ;
 int clk_disable_unprepare (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,int *) ;
 struct uniphier_fi2c_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct uniphier_fi2c_priv*) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,struct uniphier_fi2c_priv*) ;
 int init_completion (int *) ;
 scalar_t__ of_property_read_u32 (int ,char*,unsigned long*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uniphier_fi2c_priv*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;
 int uniphier_fi2c_algo ;
 int uniphier_fi2c_bus_recovery_info ;
 int uniphier_fi2c_hw_init (struct uniphier_fi2c_priv*) ;
 int uniphier_fi2c_interrupt ;

__attribute__((used)) static int uniphier_fi2c_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct uniphier_fi2c_priv *priv;
 u32 bus_speed;
 unsigned long clk_rate;
 int irq, ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->membase = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->membase))
  return PTR_ERR(priv->membase);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "failed to get IRQ number\n");
  return irq;
 }

 if (of_property_read_u32(dev->of_node, "clock-frequency", &bus_speed))
  bus_speed = UNIPHIER_FI2C_DEFAULT_SPEED;

 if (!bus_speed || bus_speed > UNIPHIER_FI2C_MAX_SPEED) {
  dev_err(dev, "invalid clock-frequency %d\n", bus_speed);
  return -EINVAL;
 }

 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(dev, "failed to get clock\n");
  return PTR_ERR(priv->clk);
 }

 ret = clk_prepare_enable(priv->clk);
 if (ret)
  return ret;

 clk_rate = clk_get_rate(priv->clk);
 if (!clk_rate) {
  dev_err(dev, "input clock rate should not be zero\n");
  ret = -EINVAL;
  goto disable_clk;
 }

 priv->clk_cycle = clk_rate / bus_speed;
 init_completion(&priv->comp);
 spin_lock_init(&priv->lock);
 priv->adap.owner = THIS_MODULE;
 priv->adap.algo = &uniphier_fi2c_algo;
 priv->adap.dev.parent = dev;
 priv->adap.dev.of_node = dev->of_node;
 strlcpy(priv->adap.name, "UniPhier FI2C", sizeof(priv->adap.name));
 priv->adap.bus_recovery_info = &uniphier_fi2c_bus_recovery_info;
 i2c_set_adapdata(&priv->adap, priv);
 platform_set_drvdata(pdev, priv);

 uniphier_fi2c_hw_init(priv);

 ret = devm_request_irq(dev, irq, uniphier_fi2c_interrupt, 0,
          pdev->name, priv);
 if (ret) {
  dev_err(dev, "failed to request irq %d\n", irq);
  goto disable_clk;
 }

 ret = i2c_add_adapter(&priv->adap);
disable_clk:
 if (ret)
  clk_disable_unprepare(priv->clk);

 return ret;
}
