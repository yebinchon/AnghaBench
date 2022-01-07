
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int parent; struct lm3533_als_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct lm3533_als_platform_data {int dummy; } ;
struct lm3533_als {scalar_t__ irq; int thresh_mutex; int zone; struct platform_device* pdev; struct lm3533* lm3533; } ;
struct lm3533 {scalar_t__ irq; } ;
struct TYPE_5__ {int parent; } ;
struct iio_dev {int modes; TYPE_1__ dev; int name; int num_channels; int channels; int * info; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int atomic_set (int *,int ) ;
 int dev_err (TYPE_2__*,char*) ;
 struct lm3533* dev_get_drvdata (int ) ;
 int dev_name (TYPE_2__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int free_irq (scalar_t__,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct lm3533_als* iio_priv (struct iio_dev*) ;
 int lm3533_als_channels ;
 int lm3533_als_disable (struct lm3533_als*) ;
 int lm3533_als_enable (struct lm3533_als*) ;
 int lm3533_als_info ;
 int lm3533_als_setup (struct lm3533_als*,struct lm3533_als_platform_data*) ;
 int lm3533_als_setup_irq (struct lm3533_als*,struct iio_dev*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;

__attribute__((used)) static int lm3533_als_probe(struct platform_device *pdev)
{
 struct lm3533 *lm3533;
 struct lm3533_als_platform_data *pdata;
 struct lm3533_als *als;
 struct iio_dev *indio_dev;
 int ret;

 lm3533 = dev_get_drvdata(pdev->dev.parent);
 if (!lm3533)
  return -EINVAL;

 pdata = pdev->dev.platform_data;
 if (!pdata) {
  dev_err(&pdev->dev, "no platform data\n");
  return -EINVAL;
 }

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*als));
 if (!indio_dev)
  return -ENOMEM;

 indio_dev->info = &lm3533_als_info;
 indio_dev->channels = lm3533_als_channels;
 indio_dev->num_channels = ARRAY_SIZE(lm3533_als_channels);
 indio_dev->name = dev_name(&pdev->dev);
 indio_dev->dev.parent = pdev->dev.parent;
 indio_dev->modes = INDIO_DIRECT_MODE;

 als = iio_priv(indio_dev);
 als->lm3533 = lm3533;
 als->pdev = pdev;
 als->irq = lm3533->irq;
 atomic_set(&als->zone, 0);
 mutex_init(&als->thresh_mutex);

 platform_set_drvdata(pdev, indio_dev);

 if (als->irq) {
  ret = lm3533_als_setup_irq(als, indio_dev);
  if (ret)
   return ret;
 }

 ret = lm3533_als_setup(als, pdata);
 if (ret)
  goto err_free_irq;

 ret = lm3533_als_enable(als);
 if (ret)
  goto err_free_irq;

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(&pdev->dev, "failed to register ALS\n");
  goto err_disable;
 }

 return 0;

err_disable:
 lm3533_als_disable(als);
err_free_irq:
 if (als->irq)
  free_irq(als->irq, indio_dev);

 return ret;
}
