
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xadc {int data; int clk; int zynq_unmask_work; int irq; int convst_trigger; int samplerate_trigger; TYPE_1__* ops; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int channels; } ;
struct TYPE_2__ {int flags; } ;


 int XADC_FLAGS_BUFFERED ;
 int cancel_delayed_work_sync (int *) ;
 int clk_disable_unprepare (int ) ;
 int free_irq (int ,struct iio_dev*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct xadc* iio_priv (struct iio_dev*) ;
 int iio_trigger_free (int ) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int kfree (int ) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xadc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct xadc *xadc = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 if (xadc->ops->flags & XADC_FLAGS_BUFFERED) {
  iio_trigger_free(xadc->samplerate_trigger);
  iio_trigger_free(xadc->convst_trigger);
  iio_triggered_buffer_cleanup(indio_dev);
 }
 free_irq(xadc->irq, indio_dev);
 cancel_delayed_work_sync(&xadc->zynq_unmask_work);
 clk_disable_unprepare(xadc->clk);
 kfree(xadc->data);
 kfree(indio_dev->channels);

 return 0;
}
