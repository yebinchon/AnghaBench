
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iio_dev {int dummy; } ;
struct ads1015_data {scalar_t__ comp_mode; int event_channel; int regmap; } ;
typedef int irqreturn_t ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 scalar_t__ ADS1015_CFG_COMP_MODE_TRAD ;
 int ADS1015_CONV_REG ;
 int IIO_EV_DIR_EITHER ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int) ;
 int IIO_VOLTAGE ;
 int IRQ_HANDLED ;
 scalar_t__ ads1015_event_channel_enabled (struct ads1015_data*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ads1015_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t ads1015_event_handler(int irq, void *priv)
{
 struct iio_dev *indio_dev = priv;
 struct ads1015_data *data = iio_priv(indio_dev);
 int val;
 int ret;


 ret = regmap_read(data->regmap, ADS1015_CONV_REG, &val);
 if (ret)
  return IRQ_HANDLED;

 if (ads1015_event_channel_enabled(data)) {
  enum iio_event_direction dir;
  u64 code;

  dir = data->comp_mode == ADS1015_CFG_COMP_MODE_TRAD ?
     IIO_EV_DIR_RISING : IIO_EV_DIR_EITHER;
  code = IIO_UNMOD_EVENT_CODE(IIO_VOLTAGE, data->event_channel,
     IIO_EV_TYPE_THRESH, dir);
  iio_push_event(indio_dev, code, iio_get_time_ns(indio_dev));
 }

 return IRQ_HANDLED;
}
