
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int MMA9551_APPID_SLEEP_WAKE ;
 int MMA9551_SLEEP_CFG ;
 int MMA9551_SLEEP_CFG_FLEEN ;
 int MMA9551_SLEEP_CFG_SCHEN ;
 int MMA9551_SLEEP_CFG_SNCEN ;
 int mma9551_update_config_bits (struct i2c_client*,int ,int ,int,int) ;

int mma9551_set_device_state(struct i2c_client *client, bool enable)
{
 return mma9551_update_config_bits(client, MMA9551_APPID_SLEEP_WAKE,
       MMA9551_SLEEP_CFG,
       MMA9551_SLEEP_CFG_SNCEN |
       MMA9551_SLEEP_CFG_FLEEN |
       MMA9551_SLEEP_CFG_SCHEN,
       enable ? MMA9551_SLEEP_CFG_SCHEN |
       MMA9551_SLEEP_CFG_FLEEN :
       MMA9551_SLEEP_CFG_SNCEN);
}
