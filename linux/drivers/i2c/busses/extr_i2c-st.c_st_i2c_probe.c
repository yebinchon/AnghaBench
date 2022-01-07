
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int timeout; int name; TYPE_1__ dev; int * bus_recovery_info; int * algo; scalar_t__ retries; int owner; } ;
struct st_i2c_dev {TYPE_2__* dev; int complete; struct i2c_adapter adap; int irq; int mode; int clk; int base; } ;
struct resource {int start; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int I2C_MODE_FAST ;
 int I2C_MODE_STANDARD ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_info (TYPE_2__*,char*,int ) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct st_i2c_dev* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_2__*,int ,int *,int ,int ,int ,struct st_i2c_dev*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct st_i2c_dev*) ;
 int init_completion (int *) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int of_clk_get_by_name (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int pinctrl_pm_select_default_state (TYPE_2__*) ;
 int pinctrl_pm_select_idle_state (TYPE_2__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct st_i2c_dev*) ;
 int snprintf (int ,int,char*,int *) ;
 int st_i2c_algo ;
 int st_i2c_isr_thread ;
 int st_i2c_of_get_deglitch (struct device_node*,struct st_i2c_dev*) ;
 int st_i2c_recovery_info ;

__attribute__((used)) static int st_i2c_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct st_i2c_dev *i2c_dev;
 struct resource *res;
 u32 clk_rate;
 struct i2c_adapter *adap;
 int ret;

 i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
 if (!i2c_dev)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 i2c_dev->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(i2c_dev->base))
  return PTR_ERR(i2c_dev->base);

 i2c_dev->irq = irq_of_parse_and_map(np, 0);
 if (!i2c_dev->irq) {
  dev_err(&pdev->dev, "IRQ missing or invalid\n");
  return -EINVAL;
 }

 i2c_dev->clk = of_clk_get_by_name(np, "ssc");
 if (IS_ERR(i2c_dev->clk)) {
  dev_err(&pdev->dev, "Unable to request clock\n");
  return PTR_ERR(i2c_dev->clk);
 }

 i2c_dev->mode = I2C_MODE_STANDARD;
 ret = of_property_read_u32(np, "clock-frequency", &clk_rate);
 if ((!ret) && (clk_rate == 400000))
  i2c_dev->mode = I2C_MODE_FAST;

 i2c_dev->dev = &pdev->dev;

 ret = devm_request_threaded_irq(&pdev->dev, i2c_dev->irq,
   ((void*)0), st_i2c_isr_thread,
   IRQF_ONESHOT, pdev->name, i2c_dev);
 if (ret) {
  dev_err(&pdev->dev, "Failed to request irq %i\n", i2c_dev->irq);
  return ret;
 }

 pinctrl_pm_select_default_state(i2c_dev->dev);

 pinctrl_pm_select_idle_state(i2c_dev->dev);

 ret = st_i2c_of_get_deglitch(np, i2c_dev);
 if (ret)
  return ret;

 adap = &i2c_dev->adap;
 i2c_set_adapdata(adap, i2c_dev);
 snprintf(adap->name, sizeof(adap->name), "ST I2C(%pa)", &res->start);
 adap->owner = THIS_MODULE;
 adap->timeout = 2 * HZ;
 adap->retries = 0;
 adap->algo = &st_i2c_algo;
 adap->bus_recovery_info = &st_i2c_recovery_info;
 adap->dev.parent = &pdev->dev;
 adap->dev.of_node = pdev->dev.of_node;

 init_completion(&i2c_dev->complete);

 ret = i2c_add_adapter(adap);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, i2c_dev);

 dev_info(i2c_dev->dev, "%s initialized\n", adap->name);

 return 0;
}
