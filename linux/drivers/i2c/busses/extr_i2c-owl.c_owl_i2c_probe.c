
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct TYPE_4__ {int of_node; struct device* parent; } ;
struct TYPE_5__ {int name; TYPE_1__ dev; int * quirks; int timeout; int * algo; int owner; } ;
struct owl_i2c_dev {scalar_t__ bus_freq; int clk; TYPE_2__ adap; int lock; int msg_complete; int clk_rate; int base; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ OWL_I2C_DEF_SPEED_HZ ;
 scalar_t__ OWL_I2C_MAX_SPEED_HZ ;
 int OWL_I2C_TIMEOUT ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct owl_i2c_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct owl_i2c_dev*) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,struct owl_i2c_dev*) ;
 int init_completion (int *) ;
 scalar_t__ of_property_read_u32 (int ,char*,scalar_t__*) ;
 int owl_i2c_algorithm ;
 int owl_i2c_interrupt ;
 int owl_i2c_quirks ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct owl_i2c_dev*) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int owl_i2c_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct owl_i2c_dev *i2c_dev;
 struct resource *res;
 int ret, irq;

 i2c_dev = devm_kzalloc(dev, sizeof(*i2c_dev), GFP_KERNEL);
 if (!i2c_dev)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 i2c_dev->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(i2c_dev->base))
  return PTR_ERR(i2c_dev->base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "failed to get IRQ number\n");
  return irq;
 }

 if (of_property_read_u32(dev->of_node, "clock-frequency",
     &i2c_dev->bus_freq))
  i2c_dev->bus_freq = OWL_I2C_DEF_SPEED_HZ;


 if (i2c_dev->bus_freq != OWL_I2C_DEF_SPEED_HZ &&
     i2c_dev->bus_freq != OWL_I2C_MAX_SPEED_HZ) {
  dev_err(dev, "invalid clock-frequency %d\n", i2c_dev->bus_freq);
  return -EINVAL;
 }

 i2c_dev->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(i2c_dev->clk)) {
  dev_err(dev, "failed to get clock\n");
  return PTR_ERR(i2c_dev->clk);
 }

 ret = clk_prepare_enable(i2c_dev->clk);
 if (ret)
  return ret;

 i2c_dev->clk_rate = clk_get_rate(i2c_dev->clk);
 if (!i2c_dev->clk_rate) {
  dev_err(dev, "input clock rate should not be zero\n");
  ret = -EINVAL;
  goto disable_clk;
 }

 init_completion(&i2c_dev->msg_complete);
 spin_lock_init(&i2c_dev->lock);
 i2c_dev->adap.owner = THIS_MODULE;
 i2c_dev->adap.algo = &owl_i2c_algorithm;
 i2c_dev->adap.timeout = OWL_I2C_TIMEOUT;
 i2c_dev->adap.quirks = &owl_i2c_quirks;
 i2c_dev->adap.dev.parent = dev;
 i2c_dev->adap.dev.of_node = dev->of_node;
 snprintf(i2c_dev->adap.name, sizeof(i2c_dev->adap.name),
   "%s", "OWL I2C adapter");
 i2c_set_adapdata(&i2c_dev->adap, i2c_dev);

 platform_set_drvdata(pdev, i2c_dev);

 ret = devm_request_irq(dev, irq, owl_i2c_interrupt, 0, pdev->name,
          i2c_dev);
 if (ret) {
  dev_err(dev, "failed to request irq %d\n", irq);
  goto disable_clk;
 }

 return i2c_add_adapter(&i2c_dev->adap);

disable_clk:
 clk_disable_unprepare(i2c_dev->clk);

 return ret;
}
