
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iio_chan_spec {int channel2; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int MMA9551_APPID_TILT ;
 int MMA9551_TILT_ANGFLG ;
 int MMA9551_TILT_QUAD_REG ;
 int MMA9551_TILT_XY_ANG_REG ;
 int MMA9551_TILT_XY_QUAD_SHIFT ;
 int MMA9551_TILT_XZ_ANG_REG ;
 int MMA9551_TILT_XZ_QUAD_SHIFT ;
 int MMA9551_TILT_YZ_ANG_REG ;
 int MMA9551_TILT_YZ_QUAD_SHIFT ;
 int mma9551_read_status_byte (struct i2c_client*,int ,int ,int*) ;
 int mma9551_set_power_state (struct i2c_client*,int) ;

__attribute__((used)) static int mma9551_read_incli_chan(struct i2c_client *client,
       const struct iio_chan_spec *chan,
       int *val)
{
 u8 quad_shift, angle, quadrant;
 u16 reg_addr;
 int ret;

 switch (chan->channel2) {
 case 130:
  reg_addr = MMA9551_TILT_YZ_ANG_REG;
  quad_shift = MMA9551_TILT_YZ_QUAD_SHIFT;
  break;
 case 129:
  reg_addr = MMA9551_TILT_XZ_ANG_REG;
  quad_shift = MMA9551_TILT_XZ_QUAD_SHIFT;
  break;
 case 128:
  reg_addr = MMA9551_TILT_XY_ANG_REG;
  quad_shift = MMA9551_TILT_XY_QUAD_SHIFT;
  break;
 default:
  return -EINVAL;
 }

 ret = mma9551_set_power_state(client, 1);
 if (ret < 0)
  return ret;

 ret = mma9551_read_status_byte(client, MMA9551_APPID_TILT,
           reg_addr, &angle);
 if (ret < 0)
  goto out_poweroff;

 ret = mma9551_read_status_byte(client, MMA9551_APPID_TILT,
           MMA9551_TILT_QUAD_REG, &quadrant);
 if (ret < 0)
  goto out_poweroff;

 angle &= ~MMA9551_TILT_ANGFLG;
 quadrant = (quadrant >> quad_shift) & 0x03;

 if (quadrant == 1 || quadrant == 3)
  *val = 90 * (quadrant + 1) - angle;
 else
  *val = angle + 90 * quadrant;

 ret = IIO_VAL_INT;

out_poweroff:
 mma9551_set_power_state(client, 0);
 return ret;
}
