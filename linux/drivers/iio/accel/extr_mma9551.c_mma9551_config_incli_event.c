
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma9551_data {int* event_enabled; int client; } ;
struct iio_dev {int dummy; } ;
typedef enum mma9551_tilt_axis { ____Placeholder_mma9551_tilt_axis } mma9551_tilt_axis ;
typedef enum mma9551_gpio_pin { ____Placeholder_mma9551_gpio_pin } mma9551_gpio_pin ;
typedef enum iio_modifier { ____Placeholder_iio_modifier } iio_modifier ;


 int EINVAL ;



 int MMA9551_APPID_NONE ;
 int MMA9551_APPID_TILT ;
 int MMA9551_TILT_XY_ANG_REG ;
 int MMA9551_TILT_XZ_ANG_REG ;
 int MMA9551_TILT_YZ_ANG_REG ;
 struct mma9551_data* iio_priv (struct iio_dev*) ;
 int mma9551_gpio_config (int ,int,int ,int,int ) ;
 int mma9551_set_power_state (int ,int) ;

__attribute__((used)) static int mma9551_config_incli_event(struct iio_dev *indio_dev,
          enum iio_modifier axis,
          int state)
{
 struct mma9551_data *data = iio_priv(indio_dev);
 enum mma9551_tilt_axis mma_axis;
 int ret;


 mma_axis = axis - 1;

 if (data->event_enabled[mma_axis] == state)
  return 0;

 if (state == 0) {
  ret = mma9551_gpio_config(data->client,
       (enum mma9551_gpio_pin)mma_axis,
       MMA9551_APPID_NONE, 0, 0);
  if (ret < 0)
   return ret;

  ret = mma9551_set_power_state(data->client, 0);
  if (ret < 0)
   return ret;
 } else {
  int bitnum;


  switch (axis) {
  case 130:
   bitnum = 7 + 8 * MMA9551_TILT_YZ_ANG_REG;
   break;
  case 129:
   bitnum = 7 + 8 * MMA9551_TILT_XZ_ANG_REG;
   break;
  case 128:
   bitnum = 7 + 8 * MMA9551_TILT_XY_ANG_REG;
   break;
  default:
   return -EINVAL;
  }


  ret = mma9551_set_power_state(data->client, 1);
  if (ret < 0)
   return ret;

  ret = mma9551_gpio_config(data->client,
       (enum mma9551_gpio_pin)mma_axis,
       MMA9551_APPID_TILT, bitnum, 0);
  if (ret < 0) {
   mma9551_set_power_state(data->client, 0);
   return ret;
  }
 }

 data->event_enabled[mma_axis] = state;

 return ret;
}
