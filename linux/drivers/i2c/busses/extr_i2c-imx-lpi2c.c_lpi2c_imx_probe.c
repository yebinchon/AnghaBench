
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;
typedef struct TYPE_18__ TYPE_11__ ;


struct TYPE_20__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct TYPE_19__ {int of_node; TYPE_1__* parent; } ;
struct TYPE_18__ {TYPE_16__ dev; int name; int * algo; int owner; } ;
struct lpi2c_imx_struct {int txfifosize; int rxfifosize; TYPE_11__ adapter; scalar_t__ base; scalar_t__ clk; int bitrate; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_PM_TIMEOUT ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int LPI2C_DEFAULT_RATE ;
 scalar_t__ LPI2C_PARAM ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_16__*,char*) ;
 scalar_t__ devm_clk_get (TYPE_1__*,int *) ;
 struct lpi2c_imx_struct* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,int ,struct lpi2c_imx_struct*) ;
 int i2c_add_adapter (TYPE_11__*) ;
 int i2c_set_adapdata (TYPE_11__*,struct lpi2c_imx_struct*) ;
 int lpi2c_imx_algo ;
 int lpi2c_imx_isr ;
 int of_property_read_u32 (int ,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct lpi2c_imx_struct*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_dont_use_autosuspend (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_get_noresume (TYPE_1__*) ;
 int pm_runtime_mark_last_busy (TYPE_1__*) ;
 int pm_runtime_put (TYPE_1__*) ;
 int pm_runtime_put_autosuspend (TYPE_1__*) ;
 int pm_runtime_set_active (TYPE_1__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_1__*,int ) ;
 int pm_runtime_use_autosuspend (TYPE_1__*) ;
 unsigned int readl (scalar_t__) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int lpi2c_imx_probe(struct platform_device *pdev)
{
 struct lpi2c_imx_struct *lpi2c_imx;
 unsigned int temp;
 int irq, ret;

 lpi2c_imx = devm_kzalloc(&pdev->dev, sizeof(*lpi2c_imx), GFP_KERNEL);
 if (!lpi2c_imx)
  return -ENOMEM;

 lpi2c_imx->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(lpi2c_imx->base))
  return PTR_ERR(lpi2c_imx->base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(&pdev->dev, "can't get irq number\n");
  return irq;
 }

 lpi2c_imx->adapter.owner = THIS_MODULE;
 lpi2c_imx->adapter.algo = &lpi2c_imx_algo;
 lpi2c_imx->adapter.dev.parent = &pdev->dev;
 lpi2c_imx->adapter.dev.of_node = pdev->dev.of_node;
 strlcpy(lpi2c_imx->adapter.name, pdev->name,
  sizeof(lpi2c_imx->adapter.name));

 lpi2c_imx->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(lpi2c_imx->clk)) {
  dev_err(&pdev->dev, "can't get I2C peripheral clock\n");
  return PTR_ERR(lpi2c_imx->clk);
 }

 ret = of_property_read_u32(pdev->dev.of_node,
       "clock-frequency", &lpi2c_imx->bitrate);
 if (ret)
  lpi2c_imx->bitrate = LPI2C_DEFAULT_RATE;

 ret = devm_request_irq(&pdev->dev, irq, lpi2c_imx_isr, 0,
          pdev->name, lpi2c_imx);
 if (ret) {
  dev_err(&pdev->dev, "can't claim irq %d\n", irq);
  return ret;
 }

 i2c_set_adapdata(&lpi2c_imx->adapter, lpi2c_imx);
 platform_set_drvdata(pdev, lpi2c_imx);

 ret = clk_prepare_enable(lpi2c_imx->clk);
 if (ret) {
  dev_err(&pdev->dev, "clk enable failed %d\n", ret);
  return ret;
 }

 pm_runtime_set_autosuspend_delay(&pdev->dev, I2C_PM_TIMEOUT);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_get_noresume(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 temp = readl(lpi2c_imx->base + LPI2C_PARAM);
 lpi2c_imx->txfifosize = 1 << (temp & 0x0f);
 lpi2c_imx->rxfifosize = 1 << ((temp >> 8) & 0x0f);

 ret = i2c_add_adapter(&lpi2c_imx->adapter);
 if (ret)
  goto rpm_disable;

 pm_runtime_mark_last_busy(&pdev->dev);
 pm_runtime_put_autosuspend(&pdev->dev);

 dev_info(&lpi2c_imx->adapter.dev, "LPI2C adapter registered\n");

 return 0;

rpm_disable:
 pm_runtime_put(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_dont_use_autosuspend(&pdev->dev);

 return ret;
}
