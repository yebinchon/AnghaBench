
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ config; } ;
struct mma9553_data {TYPE_2__* client; TYPE_1__ conf; } ;
struct TYPE_5__ {int dev; } ;


 int MMA9551_APPID_PEDOMETER ;
 int MMA9553_CONFIG_RETRIES ;
 int MMA9553_DEFAULT_SAMPLE_RATE ;
 scalar_t__ MMA9553_MASK_CONF_CONFIG ;
 scalar_t__ MMA9553_REG_CONF_CONF_STEPLEN ;
 int dev_err (int *,char*,scalar_t__) ;
 int mma9551_read_config_word (TYPE_2__*,int ,scalar_t__,scalar_t__*) ;
 int mma9551_sleep (int ) ;
 int mma9551_write_config_word (TYPE_2__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ mma9553_get_bits (scalar_t__,scalar_t__) ;
 scalar_t__ mma9553_set_bits (scalar_t__,int,scalar_t__) ;

__attribute__((used)) static int mma9553_set_config(struct mma9553_data *data, u16 reg,
         u16 *p_reg_val, u16 val, u16 mask)
{
 int ret, retries;
 u16 reg_val, config;

 reg_val = *p_reg_val;
 if (val == mma9553_get_bits(reg_val, mask))
  return 0;

 reg_val = mma9553_set_bits(reg_val, val, mask);
 ret = mma9551_write_config_word(data->client, MMA9551_APPID_PEDOMETER,
     reg, reg_val);
 if (ret < 0) {
  dev_err(&data->client->dev,
   "error writing config register 0x%x\n", reg);
  return ret;
 }

 *p_reg_val = reg_val;


 config = mma9553_set_bits(data->conf.config, 1,
      MMA9553_MASK_CONF_CONFIG);

 ret = mma9551_write_config_word(data->client, MMA9551_APPID_PEDOMETER,
     MMA9553_REG_CONF_CONF_STEPLEN, config);
 if (ret < 0) {
  dev_err(&data->client->dev,
   "error writing config register 0x%x\n",
   MMA9553_REG_CONF_CONF_STEPLEN);
  return ret;
 }

 retries = MMA9553_CONFIG_RETRIES;
 do {
  mma9551_sleep(MMA9553_DEFAULT_SAMPLE_RATE);
  ret = mma9551_read_config_word(data->client,
            MMA9551_APPID_PEDOMETER,
            MMA9553_REG_CONF_CONF_STEPLEN,
            &config);
  if (ret < 0)
   return ret;
 } while (mma9553_get_bits(config, MMA9553_MASK_CONF_CONFIG) &&
   --retries > 0);

 return 0;
}
