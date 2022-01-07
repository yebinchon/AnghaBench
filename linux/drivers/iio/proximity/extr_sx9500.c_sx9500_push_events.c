
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sx9500_data {int* prox_stat; int * event_enabled; TYPE_1__* client; int regmap; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int BIT (unsigned int) ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_PROXIMITY ;
 int IIO_UNMOD_EVENT_CODE (int ,unsigned int,int ,int) ;
 unsigned int SX9500_NUM_CHANNELS ;
 unsigned int SX9500_PROXSTAT_SHIFT ;
 int SX9500_REG_STAT ;
 int dev_err (int *,char*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct sx9500_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static void sx9500_push_events(struct iio_dev *indio_dev)
{
 int ret;
 unsigned int val, chan;
 struct sx9500_data *data = iio_priv(indio_dev);

 ret = regmap_read(data->regmap, SX9500_REG_STAT, &val);
 if (ret < 0) {
  dev_err(&data->client->dev, "i2c transfer error in irq\n");
  return;
 }

 val >>= SX9500_PROXSTAT_SHIFT;
 for (chan = 0; chan < SX9500_NUM_CHANNELS; chan++) {
  int dir;
  u64 ev;
  bool new_prox = val & BIT(chan);

  if (!data->event_enabled[chan])
   continue;
  if (new_prox == data->prox_stat[chan])

   continue;

  dir = new_prox ? IIO_EV_DIR_FALLING : IIO_EV_DIR_RISING;
  ev = IIO_UNMOD_EVENT_CODE(IIO_PROXIMITY, chan,
       IIO_EV_TYPE_THRESH, dir);
  iio_push_event(indio_dev, ev, iio_get_time_ns(indio_dev));
  data->prox_stat[chan] = new_prox;
 }
}
