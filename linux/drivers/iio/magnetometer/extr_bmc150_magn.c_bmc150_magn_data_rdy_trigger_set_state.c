
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct bmc150_magn_data {int dready_trigger_on; int mutex; int regmap; } ;


 int BMC150_MAGN_MASK_DRDY_EN ;
 int BMC150_MAGN_REG_INT_DRDY ;
 int BMC150_MAGN_SHIFT_DRDY_EN ;
 int bmc150_magn_reset_intr (struct bmc150_magn_data*) ;
 struct bmc150_magn_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int bmc150_magn_data_rdy_trigger_set_state(struct iio_trigger *trig,
        bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct bmc150_magn_data *data = iio_priv(indio_dev);
 int ret = 0;

 mutex_lock(&data->mutex);
 if (state == data->dready_trigger_on)
  goto err_unlock;

 ret = regmap_update_bits(data->regmap, BMC150_MAGN_REG_INT_DRDY,
     BMC150_MAGN_MASK_DRDY_EN,
     state << BMC150_MAGN_SHIFT_DRDY_EN);
 if (ret < 0)
  goto err_unlock;

 data->dready_trigger_on = state;

 if (state) {
  ret = bmc150_magn_reset_intr(data);
  if (ret < 0)
   goto err_unlock;
 }
 mutex_unlock(&data->mutex);

 return 0;

err_unlock:
 mutex_unlock(&data->mutex);
 return ret;
}
