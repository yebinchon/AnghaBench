
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int currentmode; int dev; int active_scan_mask; } ;
struct TYPE_2__ {int channels_bitmask; } ;
struct at91_adc_state {TYPE_1__ touch_st; } ;


 scalar_t__ AT91_SAMA5D2_MAX_CHAN_IDX ;
 int EINVAL ;
 int INDIO_ALL_TRIGGERED_MODES ;
 int at91_adc_configure_touch (struct at91_adc_state*,int) ;
 int at91_adc_dma_start (struct iio_dev*) ;
 scalar_t__ bitmap_subset (int ,int *,scalar_t__) ;
 int dev_err (int *,char*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_postenable (struct iio_dev*) ;

__attribute__((used)) static int at91_adc_buffer_postenable(struct iio_dev *indio_dev)
{
 int ret;
 struct at91_adc_state *st = iio_priv(indio_dev);


 if (bitmap_subset(indio_dev->active_scan_mask,
     &st->touch_st.channels_bitmask,
     AT91_SAMA5D2_MAX_CHAN_IDX + 1)) {

  return at91_adc_configure_touch(st, 1);
 }

 if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
  return -EINVAL;


 ret = at91_adc_dma_start(indio_dev);
 if (ret) {
  dev_err(&indio_dev->dev, "buffer postenable failed\n");
  return ret;
 }

 return iio_triggered_buffer_postenable(indio_dev);
}
