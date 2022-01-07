
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {unsigned int* active_scan_mask; int masklength; } ;
struct adxl372_state {int fifo_set_size; int watermark; int fifo_mode; int fifo_format; } ;
struct TYPE_3__ {unsigned int bits; int fifo_format; } ;


 int ADXL372_FIFO_BYPASSED ;
 int ADXL372_FIFO_SIZE ;
 int ADXL372_FIFO_STREAMED ;
 int ADXL372_INT1_MAP_FIFO_FULL_MSK ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* adxl372_axis_lookup_table ;
 int adxl372_configure_fifo (struct adxl372_state*) ;
 int adxl372_set_interrupts (struct adxl372_state*,int ,int ) ;
 int bitmap_weight (unsigned int*,int ) ;
 struct adxl372_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_postenable (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;

__attribute__((used)) static int adxl372_buffer_postenable(struct iio_dev *indio_dev)
{
 struct adxl372_state *st = iio_priv(indio_dev);
 unsigned int mask;
 int i, ret;

 ret = iio_triggered_buffer_postenable(indio_dev);
 if (ret < 0)
  return ret;

 ret = adxl372_set_interrupts(st, ADXL372_INT1_MAP_FIFO_FULL_MSK, 0);
 if (ret < 0)
  goto err;

 mask = *indio_dev->active_scan_mask;

 for (i = 0; i < ARRAY_SIZE(adxl372_axis_lookup_table); i++) {
  if (mask == adxl372_axis_lookup_table[i].bits)
   break;
 }

 if (i == ARRAY_SIZE(adxl372_axis_lookup_table)) {
  ret = -EINVAL;
  goto err;
 }

 st->fifo_format = adxl372_axis_lookup_table[i].fifo_format;
 st->fifo_set_size = bitmap_weight(indio_dev->active_scan_mask,
       indio_dev->masklength);






 if ((st->watermark * st->fifo_set_size) > ADXL372_FIFO_SIZE)
  st->watermark = (ADXL372_FIFO_SIZE / st->fifo_set_size);

 st->fifo_mode = ADXL372_FIFO_STREAMED;

 ret = adxl372_configure_fifo(st);
 if (ret < 0) {
  st->fifo_mode = ADXL372_FIFO_BYPASSED;
  adxl372_set_interrupts(st, 0, 0);
  goto err;
 }

 return 0;

err:
 iio_triggered_buffer_predisable(indio_dev);
 return ret;
}
