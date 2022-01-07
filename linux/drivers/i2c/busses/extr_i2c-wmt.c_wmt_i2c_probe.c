
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct i2c_adapter {TYPE_1__ dev; int * algo; int owner; int name; } ;
struct wmt_i2c_dev {int complete; struct i2c_adapter adapter; int irq; TYPE_2__* dev; int mode; int clk; int base; } ;
struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_MODE_FAST ;
 int I2C_MODE_STANDARD ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*,...) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct wmt_i2c_dev* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,int ,int ,int ,char*,struct wmt_i2c_dev*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct wmt_i2c_dev*) ;
 int init_completion (int *) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int of_clk_get (struct device_node*,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wmt_i2c_dev*) ;
 int strlcpy (int ,char*,int) ;
 int wmt_i2c_algo ;
 int wmt_i2c_isr ;
 int wmt_i2c_reset_hardware (struct wmt_i2c_dev*) ;

__attribute__((used)) static int wmt_i2c_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct wmt_i2c_dev *i2c_dev;
 struct i2c_adapter *adap;
 struct resource *res;
 int err;
 u32 clk_rate;

 i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
 if (!i2c_dev)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 i2c_dev->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(i2c_dev->base))
  return PTR_ERR(i2c_dev->base);

 i2c_dev->irq = irq_of_parse_and_map(np, 0);
 if (!i2c_dev->irq) {
  dev_err(&pdev->dev, "irq missing or invalid\n");
  return -EINVAL;
 }

 i2c_dev->clk = of_clk_get(np, 0);
 if (IS_ERR(i2c_dev->clk)) {
  dev_err(&pdev->dev, "unable to request clock\n");
  return PTR_ERR(i2c_dev->clk);
 }

 i2c_dev->mode = I2C_MODE_STANDARD;
 err = of_property_read_u32(np, "clock-frequency", &clk_rate);
 if ((!err) && (clk_rate == 400000))
  i2c_dev->mode = I2C_MODE_FAST;

 i2c_dev->dev = &pdev->dev;

 err = devm_request_irq(&pdev->dev, i2c_dev->irq, wmt_i2c_isr, 0,
       "i2c", i2c_dev);
 if (err) {
  dev_err(&pdev->dev, "failed to request irq %i\n", i2c_dev->irq);
  return err;
 }

 adap = &i2c_dev->adapter;
 i2c_set_adapdata(adap, i2c_dev);
 strlcpy(adap->name, "WMT I2C adapter", sizeof(adap->name));
 adap->owner = THIS_MODULE;
 adap->algo = &wmt_i2c_algo;
 adap->dev.parent = &pdev->dev;
 adap->dev.of_node = pdev->dev.of_node;

 init_completion(&i2c_dev->complete);

 err = wmt_i2c_reset_hardware(i2c_dev);
 if (err) {
  dev_err(&pdev->dev, "error initializing hardware\n");
  return err;
 }

 err = i2c_add_adapter(adap);
 if (err)
  return err;

 platform_set_drvdata(pdev, i2c_dev);

 return 0;
}
