
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_chan_spec {int channel2; } ;
struct i2c_client {int dummy; } ;
typedef int s16 ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int MMA9551_AFE_X_ACCEL_REG ;
 int MMA9551_AFE_Y_ACCEL_REG ;
 int MMA9551_AFE_Z_ACCEL_REG ;
 int MMA9551_APPID_AFE ;
 int mma9551_read_status_word (struct i2c_client*,int ,int ,int*) ;
 int mma9551_set_power_state (struct i2c_client*,int) ;

int mma9551_read_accel_chan(struct i2c_client *client,
       const struct iio_chan_spec *chan,
       int *val, int *val2)
{
 u16 reg_addr;
 s16 raw_accel;
 int ret;

 switch (chan->channel2) {
 case 130:
  reg_addr = MMA9551_AFE_X_ACCEL_REG;
  break;
 case 129:
  reg_addr = MMA9551_AFE_Y_ACCEL_REG;
  break;
 case 128:
  reg_addr = MMA9551_AFE_Z_ACCEL_REG;
  break;
 default:
  return -EINVAL;
 }

 ret = mma9551_set_power_state(client, 1);
 if (ret < 0)
  return ret;

 ret = mma9551_read_status_word(client, MMA9551_APPID_AFE,
           reg_addr, &raw_accel);
 if (ret < 0)
  goto out_poweroff;

 *val = raw_accel;

 ret = IIO_VAL_INT;

out_poweroff:
 mma9551_set_power_state(client, 0);
 return ret;
}
