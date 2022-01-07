
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int channels_bitmask; } ;
struct at91_adc_state {TYPE_1__ touch_st; } ;


 scalar_t__ AT91_SAMA5D2_MAX_CHAN_IDX ;
 int EINVAL ;
 scalar_t__ bitmap_intersects (int *,unsigned long const*,scalar_t__) ;
 scalar_t__ bitmap_subset (unsigned long const*,int *,scalar_t__) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int at91_adc_update_scan_mode(struct iio_dev *indio_dev,
         const unsigned long *scan_mask)
{
 struct at91_adc_state *st = iio_priv(indio_dev);

 if (bitmap_subset(scan_mask, &st->touch_st.channels_bitmask,
     AT91_SAMA5D2_MAX_CHAN_IDX + 1))
  return 0;




 if (bitmap_intersects(&st->touch_st.channels_bitmask, scan_mask,
         AT91_SAMA5D2_MAX_CHAN_IDX + 1))
  return -EINVAL;
 return 0;
}
