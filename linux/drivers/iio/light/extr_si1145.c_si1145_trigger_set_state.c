
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si1145_data {int autonomous; int lock; int client; int meas_rate; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 int SI1145_CMD_PSALS_AUTO ;
 int SI1145_CMD_PSALS_PAUSE ;
 int SI1145_INT_CFG_OE ;
 int SI1145_MASK_ALL_IE ;
 int SI1145_REG_INT_CFG ;
 int SI1145_REG_IRQ_ENABLE ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct si1145_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si1145_command (struct si1145_data*,int ) ;
 int si1145_set_meas_rate (struct si1145_data*,int ) ;

__attribute__((used)) static int si1145_trigger_set_state(struct iio_trigger *trig, bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct si1145_data *data = iio_priv(indio_dev);
 int err = 0, ret;

 mutex_lock(&data->lock);

 if (state) {
  data->autonomous = 1;
  err = i2c_smbus_write_byte_data(data->client,
    SI1145_REG_INT_CFG, SI1145_INT_CFG_OE);
  if (err < 0)
   goto disable;
  err = i2c_smbus_write_byte_data(data->client,
    SI1145_REG_IRQ_ENABLE, SI1145_MASK_ALL_IE);
  if (err < 0)
   goto disable;
  err = si1145_set_meas_rate(data, data->meas_rate);
  if (err < 0)
   goto disable;
  err = si1145_command(data, SI1145_CMD_PSALS_AUTO);
  if (err < 0)
   goto disable;
 } else {
disable:

  ret = si1145_command(data, SI1145_CMD_PSALS_PAUSE);
  if (ret < 0 && !err)
   err = ret;
  ret = si1145_set_meas_rate(data, 0);
  if (ret < 0 && !err)
   err = ret;
  ret = i2c_smbus_write_byte_data(data->client,
      SI1145_REG_IRQ_ENABLE, 0);
  if (ret < 0 && !err)
   err = ret;
  ret = i2c_smbus_write_byte_data(data->client,
      SI1145_REG_INT_CFG, 0);
  if (ret < 0 && !err)
   err = ret;
  data->autonomous = 0;
 }

 mutex_unlock(&data->lock);
 return err;
}
