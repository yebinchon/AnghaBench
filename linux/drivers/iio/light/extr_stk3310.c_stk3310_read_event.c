
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stk3310_data {TYPE_1__* client; int lock; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
typedef int __be16 ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_INFO_VALUE ;
 int IIO_VAL_INT ;
 int STK3310_REG_THDH_PS ;
 int STK3310_REG_THDL_PS ;
 int be16_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 struct stk3310_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int stk3310_read_event(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir,
         enum iio_event_info info,
         int *val, int *val2)
{
 u8 reg;
 __be16 buf;
 int ret;
 struct stk3310_data *data = iio_priv(indio_dev);

 if (info != IIO_EV_INFO_VALUE)
  return -EINVAL;


 if (dir == IIO_EV_DIR_RISING)
  reg = STK3310_REG_THDH_PS;
 else if (dir == IIO_EV_DIR_FALLING)
  reg = STK3310_REG_THDL_PS;
 else
  return -EINVAL;

 mutex_lock(&data->lock);
 ret = regmap_bulk_read(data->regmap, reg, &buf, 2);
 mutex_unlock(&data->lock);
 if (ret < 0) {
  dev_err(&data->client->dev, "register read failed\n");
  return ret;
 }
 *val = be16_to_cpu(buf);

 return IIO_VAL_INT;
}
