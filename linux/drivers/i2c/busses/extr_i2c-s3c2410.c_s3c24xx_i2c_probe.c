
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ of_node; struct TYPE_16__* parent; } ;
struct TYPE_18__ {int retries; TYPE_1__ dev; int nr; struct s3c24xx_i2c* algo_data; int class; int * algo; int owner; int name; } ;
struct s3c24xx_i2c {int quirks; int tx_setup; int irq; TYPE_5__ adap; int clk; TYPE_4__* pdata; int pctrl; TYPE_1__* dev; int regs; int wait; int sysreg; } ;
struct s3c2410_platform_i2c {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_17__ {int bus_num; int (* cfg_gpio ) (int ) ;} ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ERR_PTR (int) ;
 int GFP_KERNEL ;
 int I2C_CLASS_DEPRECATED ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int QUIRK_POLL ;
 int THIS_MODULE ;
 int clk_disable (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_unprepare (int ) ;
 int dev_dbg (TYPE_1__*,char*,int ,...) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct s3c2410_platform_i2c* dev_get_platdata (TYPE_1__*) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int dev_name (TYPE_1__*) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_pinctrl_get_select_default (TYPE_1__*) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,int ,struct s3c24xx_i2c*) ;
 int i2c_add_numbered_adapter (TYPE_5__*) ;
 int init_waitqueue_head (int *) ;
 int memcpy (TYPE_4__*,struct s3c2410_platform_i2c*,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct s3c24xx_i2c*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int s3c24xx_get_device_quirks (struct platform_device*) ;
 int s3c24xx_i2c_algorithm ;
 int s3c24xx_i2c_deregister_cpufreq (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_init (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_irq ;
 int s3c24xx_i2c_parse_dt (scalar_t__,struct s3c24xx_i2c*) ;
 scalar_t__ s3c24xx_i2c_parse_dt_gpio (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_register_cpufreq (struct s3c24xx_i2c*) ;
 int strlcpy (int ,char*,int) ;
 int stub1 (int ) ;
 int to_platform_device (TYPE_1__*) ;

__attribute__((used)) static int s3c24xx_i2c_probe(struct platform_device *pdev)
{
 struct s3c24xx_i2c *i2c;
 struct s3c2410_platform_i2c *pdata = ((void*)0);
 struct resource *res;
 int ret;

 if (!pdev->dev.of_node) {
  pdata = dev_get_platdata(&pdev->dev);
  if (!pdata) {
   dev_err(&pdev->dev, "no platform data\n");
   return -EINVAL;
  }
 }

 i2c = devm_kzalloc(&pdev->dev, sizeof(struct s3c24xx_i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 i2c->pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!i2c->pdata)
  return -ENOMEM;

 i2c->quirks = s3c24xx_get_device_quirks(pdev);
 i2c->sysreg = ERR_PTR(-ENOENT);
 if (pdata)
  memcpy(i2c->pdata, pdata, sizeof(*pdata));
 else
  s3c24xx_i2c_parse_dt(pdev->dev.of_node, i2c);

 strlcpy(i2c->adap.name, "s3c2410-i2c", sizeof(i2c->adap.name));
 i2c->adap.owner = THIS_MODULE;
 i2c->adap.algo = &s3c24xx_i2c_algorithm;
 i2c->adap.retries = 2;
 i2c->adap.class = I2C_CLASS_DEPRECATED;
 i2c->tx_setup = 50;

 init_waitqueue_head(&i2c->wait);


 i2c->dev = &pdev->dev;
 i2c->clk = devm_clk_get(&pdev->dev, "i2c");
 if (IS_ERR(i2c->clk)) {
  dev_err(&pdev->dev, "cannot get clock\n");
  return -ENOENT;
 }

 dev_dbg(&pdev->dev, "clock source %p\n", i2c->clk);


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 i2c->regs = devm_ioremap_resource(&pdev->dev, res);

 if (IS_ERR(i2c->regs))
  return PTR_ERR(i2c->regs);

 dev_dbg(&pdev->dev, "registers %p (%p)\n",
  i2c->regs, res);


 i2c->adap.algo_data = i2c;
 i2c->adap.dev.parent = &pdev->dev;
 i2c->pctrl = devm_pinctrl_get_select_default(i2c->dev);


 if (i2c->pdata->cfg_gpio)
  i2c->pdata->cfg_gpio(to_platform_device(i2c->dev));
 else if (IS_ERR(i2c->pctrl) && s3c24xx_i2c_parse_dt_gpio(i2c))
  return -EINVAL;


 ret = clk_prepare_enable(i2c->clk);
 if (ret) {
  dev_err(&pdev->dev, "I2C clock enable failed\n");
  return ret;
 }

 ret = s3c24xx_i2c_init(i2c);
 clk_disable(i2c->clk);
 if (ret != 0) {
  dev_err(&pdev->dev, "I2C controller init failed\n");
  clk_unprepare(i2c->clk);
  return ret;
 }





 if (!(i2c->quirks & QUIRK_POLL)) {
  i2c->irq = ret = platform_get_irq(pdev, 0);
  if (ret <= 0) {
   dev_err(&pdev->dev, "cannot find IRQ\n");
   clk_unprepare(i2c->clk);
   return ret;
  }

  ret = devm_request_irq(&pdev->dev, i2c->irq, s3c24xx_i2c_irq,
           0, dev_name(&pdev->dev), i2c);
  if (ret != 0) {
   dev_err(&pdev->dev, "cannot claim IRQ %d\n", i2c->irq);
   clk_unprepare(i2c->clk);
   return ret;
  }
 }

 ret = s3c24xx_i2c_register_cpufreq(i2c);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to register cpufreq notifier\n");
  clk_unprepare(i2c->clk);
  return ret;
 }







 i2c->adap.nr = i2c->pdata->bus_num;
 i2c->adap.dev.of_node = pdev->dev.of_node;

 platform_set_drvdata(pdev, i2c);

 pm_runtime_enable(&pdev->dev);

 ret = i2c_add_numbered_adapter(&i2c->adap);
 if (ret < 0) {
  pm_runtime_disable(&pdev->dev);
  s3c24xx_i2c_deregister_cpufreq(i2c);
  clk_unprepare(i2c->clk);
  return ret;
 }

 dev_info(&pdev->dev, "%s: S3C I2C adapter\n", dev_name(&i2c->adap.dev));
 return 0;
}
