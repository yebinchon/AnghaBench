
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sun4i_gpadc_iio {int dummy; } ;
struct sun4i_gpadc_dev {int regmap_irqc; } ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef int irq_handler_t ;
typedef int atomic_t ;


 int atomic_set (int *,int) ;
 int dev_err (TYPE_1__*,char*,char const*,...) ;
 struct sun4i_gpadc_dev* dev_get_drvdata (TYPE_1__*) ;
 int devm_request_any_context_irq (TYPE_1__*,unsigned int,int ,int ,char const*,struct sun4i_gpadc_iio*) ;
 int disable_irq (unsigned int) ;
 struct sun4i_gpadc_iio* iio_priv (struct sun4i_gpadc_dev*) ;
 int platform_get_irq_byname (struct platform_device*,char const*) ;
 int regmap_irq_get_virq (int ,int) ;

__attribute__((used)) static int sun4i_irq_init(struct platform_device *pdev, const char *name,
     irq_handler_t handler, const char *devname,
     unsigned int *irq, atomic_t *atomic)
{
 int ret;
 struct sun4i_gpadc_dev *mfd_dev = dev_get_drvdata(pdev->dev.parent);
 struct sun4i_gpadc_iio *info = iio_priv(dev_get_drvdata(&pdev->dev));
 atomic_set(atomic, 1);

 ret = platform_get_irq_byname(pdev, name);
 if (ret < 0)
  return ret;

 ret = regmap_irq_get_virq(mfd_dev->regmap_irqc, ret);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to get virq for irq %s\n", name);
  return ret;
 }

 *irq = ret;
 ret = devm_request_any_context_irq(&pdev->dev, *irq, handler, 0,
        devname, info);
 if (ret < 0) {
  dev_err(&pdev->dev, "could not request %s interrupt: %d\n",
   name, ret);
  return ret;
 }

 disable_irq(*irq);
 atomic_set(atomic, 0);

 return 0;
}
