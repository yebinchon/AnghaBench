
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mma9553_event {scalar_t__ enabled; } ;
struct mma9553_data {scalar_t__ gpio_bitnum; int client; int stepcnt; int activity; } ;


 int IIO_ACTIVITY ;
 int IIO_EV_DIR_NONE ;
 int IIO_NO_MOD ;
 int IIO_STEPS ;
 scalar_t__ MMA9551_APPID_NONE ;
 scalar_t__ MMA9551_APPID_PEDOMETER ;
 int MMA9553_DEFAULT_GPIO_PIN ;
 int MMA9553_DEFAULT_GPIO_POLARITY ;
 int MMA9553_MASK_STATUS_ACTCHG ;
 int MMA9553_MASK_STATUS_MRGFL ;
 int MMA9553_MASK_STATUS_STEPCHG ;
 scalar_t__ MMA9553_STATUS_TO_BITNUM (int ) ;
 int mma9551_gpio_config (int ,int ,scalar_t__,scalar_t__,int ) ;
 struct mma9553_event* mma9553_get_event (struct mma9553_data*,int ,int ,int ) ;
 int mma9553_is_any_event_enabled (struct mma9553_data*,int,int ) ;
 int mma9553_read_activity_stepcnt (struct mma9553_data*,int *,int *) ;

__attribute__((used)) static int mma9553_conf_gpio(struct mma9553_data *data)
{
 u8 bitnum = 0, appid = MMA9551_APPID_PEDOMETER;
 int ret;
 struct mma9553_event *ev_step_detect;
 bool activity_enabled;

 activity_enabled = mma9553_is_any_event_enabled(data, 1,
       IIO_ACTIVITY);
 ev_step_detect = mma9553_get_event(data, IIO_STEPS, IIO_NO_MOD,
        IIO_EV_DIR_NONE);





 if (activity_enabled && ev_step_detect->enabled)
  bitnum = MMA9553_STATUS_TO_BITNUM(MMA9553_MASK_STATUS_MRGFL);
 else if (ev_step_detect->enabled)
  bitnum = MMA9553_STATUS_TO_BITNUM(MMA9553_MASK_STATUS_STEPCHG);
 else if (activity_enabled)
  bitnum = MMA9553_STATUS_TO_BITNUM(MMA9553_MASK_STATUS_ACTCHG);
 else
  appid = MMA9551_APPID_NONE;

 if (data->gpio_bitnum == bitnum)
  return 0;


 if (activity_enabled || ev_step_detect->enabled) {
  ret = mma9553_read_activity_stepcnt(data, &data->activity,
          &data->stepcnt);
  if (ret < 0)
   return ret;
 }

 ret = mma9551_gpio_config(data->client, MMA9553_DEFAULT_GPIO_PIN, appid,
      bitnum, MMA9553_DEFAULT_GPIO_POLARITY);
 if (ret < 0)
  return ret;
 data->gpio_bitnum = bitnum;

 return 0;
}
