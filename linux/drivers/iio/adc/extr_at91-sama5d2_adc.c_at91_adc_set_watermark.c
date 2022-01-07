
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dev; } ;
struct TYPE_3__ {unsigned int watermark; } ;
struct at91_adc_state {TYPE_1__ dma_st; TYPE_2__* selected_trig; } ;
struct TYPE_4__ {int hw_trig; } ;


 unsigned int AT91_HWFIFO_MAX_SIZE ;
 int EINVAL ;
 int at91_adc_dma_disable (int ) ;
 int at91_adc_dma_init (int ) ;
 int dev_dbg (int *,char*,...) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int to_platform_device (int *) ;

__attribute__((used)) static int at91_adc_set_watermark(struct iio_dev *indio_dev, unsigned int val)
{
 struct at91_adc_state *st = iio_priv(indio_dev);

 if (val > AT91_HWFIFO_MAX_SIZE)
  return -EINVAL;

 if (!st->selected_trig->hw_trig) {
  dev_dbg(&indio_dev->dev, "we need hw trigger for DMA\n");
  return 0;
 }

 dev_dbg(&indio_dev->dev, "new watermark is %u\n", val);
 st->dma_st.watermark = val;







 if (val == 1)
  at91_adc_dma_disable(to_platform_device(&indio_dev->dev));
 else if (val > 1)
  at91_adc_dma_init(to_platform_device(&indio_dev->dev));

 return 0;
}
