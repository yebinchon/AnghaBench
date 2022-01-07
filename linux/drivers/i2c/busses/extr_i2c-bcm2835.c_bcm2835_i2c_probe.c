
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct TYPE_11__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_10__ {int of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int quirks; TYPE_1__ dev; int * algo; int name; int class; int owner; } ;
struct clk {int dummy; } ;
struct bcm2835_i2c_dev {int irq; struct i2c_adapter adapter; struct clk* regs; int completion; TYPE_2__* dev; } ;


 int BCM2835_I2C_C ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int I2C_CLASS_DEPRECATED ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int THIS_MODULE ;
 int bcm2835_i2c_algo ;
 int bcm2835_i2c_isr ;
 struct clk* bcm2835_i2c_register_div (TYPE_2__*,struct clk*,struct bcm2835_i2c_dev*) ;
 int bcm2835_i2c_writel (struct bcm2835_i2c_dev*,int ,int ) ;
 int clk_prepare_enable (struct clk*) ;
 int clk_set_rate_exclusive (struct clk*,int) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 int dev_warn (TYPE_2__*,char*) ;
 struct clk* devm_clk_get (TYPE_2__*,int *) ;
 struct clk* devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct bcm2835_i2c_dev* devm_kzalloc (TYPE_2__*,int,int ) ;
 int free_irq (int ,struct bcm2835_i2c_dev*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct bcm2835_i2c_dev*) ;
 int init_completion (int *) ;
 int of_device_get_match_data (TYPE_2__*) ;
 char* of_node_full_name (int ) ;
 int of_property_read_u32 (int ,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bcm2835_i2c_dev*) ;
 int request_irq (int ,int ,int ,int ,struct bcm2835_i2c_dev*) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int bcm2835_i2c_probe(struct platform_device *pdev)
{
 struct bcm2835_i2c_dev *i2c_dev;
 struct resource *mem, *irq;
 int ret;
 struct i2c_adapter *adap;
 struct clk *bus_clk;
 struct clk *mclk;
 u32 bus_clk_rate;

 i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
 if (!i2c_dev)
  return -ENOMEM;
 platform_set_drvdata(pdev, i2c_dev);
 i2c_dev->dev = &pdev->dev;
 init_completion(&i2c_dev->completion);

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 i2c_dev->regs = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(i2c_dev->regs))
  return PTR_ERR(i2c_dev->regs);

 mclk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(mclk)) {
  if (PTR_ERR(mclk) != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Could not get clock\n");
  return PTR_ERR(mclk);
 }

 bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk, i2c_dev);

 if (IS_ERR(bus_clk)) {
  dev_err(&pdev->dev, "Could not register clock\n");
  return PTR_ERR(bus_clk);
 }

 ret = of_property_read_u32(pdev->dev.of_node, "clock-frequency",
       &bus_clk_rate);
 if (ret < 0) {
  dev_warn(&pdev->dev,
    "Could not read clock-frequency property\n");
  bus_clk_rate = 100000;
 }

 ret = clk_set_rate_exclusive(bus_clk, bus_clk_rate);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not set clock frequency\n");
  return ret;
 }

 ret = clk_prepare_enable(bus_clk);
 if (ret) {
  dev_err(&pdev->dev, "Couldn't prepare clock");
  return ret;
 }

 irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!irq) {
  dev_err(&pdev->dev, "No IRQ resource\n");
  return -ENODEV;
 }
 i2c_dev->irq = irq->start;

 ret = request_irq(i2c_dev->irq, bcm2835_i2c_isr, IRQF_SHARED,
     dev_name(&pdev->dev), i2c_dev);
 if (ret) {
  dev_err(&pdev->dev, "Could not request IRQ\n");
  return -ENODEV;
 }

 adap = &i2c_dev->adapter;
 i2c_set_adapdata(adap, i2c_dev);
 adap->owner = THIS_MODULE;
 adap->class = I2C_CLASS_DEPRECATED;
 snprintf(adap->name, sizeof(adap->name), "bcm2835 (%s)",
   of_node_full_name(pdev->dev.of_node));
 adap->algo = &bcm2835_i2c_algo;
 adap->dev.parent = &pdev->dev;
 adap->dev.of_node = pdev->dev.of_node;
 adap->quirks = of_device_get_match_data(&pdev->dev);

 bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_C, 0);

 ret = i2c_add_adapter(adap);
 if (ret)
  free_irq(i2c_dev->irq, i2c_dev);

 return ret;
}
