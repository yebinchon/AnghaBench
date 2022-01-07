
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc4005_data {int trigger_enabled; int mutex; int dev; int regmap; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 int MXC4005_REG_INT_MASK1 ;
 int MXC4005_REG_INT_MASK1_BIT_DRDYE ;
 int dev_err (int ,char*) ;
 struct mxc4005_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int mxc4005_set_trigger_state(struct iio_trigger *trig,
         bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct mxc4005_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->mutex);
 if (state) {
  ret = regmap_write(data->regmap, MXC4005_REG_INT_MASK1,
       MXC4005_REG_INT_MASK1_BIT_DRDYE);
 } else {
  ret = regmap_write(data->regmap, MXC4005_REG_INT_MASK1,
       ~MXC4005_REG_INT_MASK1_BIT_DRDYE);
 }

 if (ret < 0) {
  mutex_unlock(&data->mutex);
  dev_err(data->dev, "failed to update reg_int_mask1");
  return ret;
 }

 data->trigger_enabled = state;
 mutex_unlock(&data->mutex);

 return 0;
}
