
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {struct iio_chan_spec* channels; } ;
struct iio_chan_spec {int address; } ;
struct hts221_hw {int trig; int regmap; } ;
typedef int s64 ;
typedef int irqreturn_t ;


 int ALIGN (int,int) ;
 int HTS221_DATA_SIZE ;
 size_t HTS221_SENSOR_H ;
 size_t HTS221_SENSOR_T ;
 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct hts221_hw* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static irqreturn_t hts221_buffer_handler_thread(int irq, void *p)
{
 u8 buffer[ALIGN(2 * HTS221_DATA_SIZE, sizeof(s64)) + sizeof(s64)];
 struct iio_poll_func *pf = p;
 struct iio_dev *iio_dev = pf->indio_dev;
 struct hts221_hw *hw = iio_priv(iio_dev);
 struct iio_chan_spec const *ch;
 int err;


 ch = &iio_dev->channels[HTS221_SENSOR_H];
 err = regmap_bulk_read(hw->regmap, ch->address,
          buffer, HTS221_DATA_SIZE);
 if (err < 0)
  goto out;


 ch = &iio_dev->channels[HTS221_SENSOR_T];
 err = regmap_bulk_read(hw->regmap, ch->address,
          buffer + HTS221_DATA_SIZE, HTS221_DATA_SIZE);
 if (err < 0)
  goto out;

 iio_push_to_buffers_with_timestamp(iio_dev, buffer,
        iio_get_time_ns(iio_dev));

out:
 iio_trigger_notify_done(hw->trig);

 return IRQ_HANDLED;
}
