
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {void* config; int sleepthd; int sleepmax; int sleepmin; } ;
struct mma9553_data {TYPE_2__* client; TYPE_1__ conf; int gpio_bitnum; } ;
struct TYPE_8__ {int dev; } ;


 int MMA9551_APPID_PEDOMETER ;
 int MMA9551_RSC_PED ;
 int MMA9553_DEFAULT_SLEEPMAX ;
 int MMA9553_DEFAULT_SLEEPMIN ;
 int MMA9553_DEFAULT_SLEEPTHD ;
 int MMA9553_MASK_CONF_ACT_DBCNTM ;
 int MMA9553_MASK_CONF_CONFIG ;
 int MMA9553_MAX_BITNUM ;
 int MMA9553_REG_CONF_SLEEPMIN ;
 int dev_err (int *,char*) ;
 int mma9551_app_reset (TYPE_2__*,int ) ;
 int mma9551_read_config_words (TYPE_2__*,int ,int ,int,int *) ;
 int mma9551_read_version (TYPE_2__*) ;
 int mma9551_set_device_state (TYPE_2__*,int) ;
 int mma9551_write_config_words (TYPE_2__*,int ,int ,int,int *) ;
 int mma9553_conf_gpio (struct mma9553_data*) ;
 void* mma9553_set_bits (void*,int,int ) ;

__attribute__((used)) static int mma9553_init(struct mma9553_data *data)
{
 int ret;

 ret = mma9551_read_version(data->client);
 if (ret)
  return ret;






 ret = mma9551_read_config_words(data->client, MMA9551_APPID_PEDOMETER,
     MMA9553_REG_CONF_SLEEPMIN,
     sizeof(data->conf) / sizeof(u16),
     (u16 *)&data->conf);
 if (ret < 0) {
  dev_err(&data->client->dev,
   "failed to read configuration registers\n");
  return ret;
 }


 data->gpio_bitnum = MMA9553_MAX_BITNUM;
 ret = mma9553_conf_gpio(data);
 if (ret < 0)
  return ret;

 ret = mma9551_app_reset(data->client, MMA9551_RSC_PED);
 if (ret < 0)
  return ret;


 data->conf.sleepmin = MMA9553_DEFAULT_SLEEPMIN;
 data->conf.sleepmax = MMA9553_DEFAULT_SLEEPMAX;
 data->conf.sleepthd = MMA9553_DEFAULT_SLEEPTHD;
 data->conf.config = mma9553_set_bits(data->conf.config, 1,
          MMA9553_MASK_CONF_CONFIG);




 data->conf.config = mma9553_set_bits(data->conf.config, 1,
          MMA9553_MASK_CONF_ACT_DBCNTM);
 ret = mma9551_write_config_words(data->client, MMA9551_APPID_PEDOMETER,
      MMA9553_REG_CONF_SLEEPMIN,
      sizeof(data->conf) / sizeof(u16),
      (u16 *)&data->conf);
 if (ret < 0) {
  dev_err(&data->client->dev,
   "failed to write configuration registers\n");
  return ret;
 }

 return mma9551_set_device_state(data->client, 1);
}
