
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int MMA9551_APPID_RSC ;
 scalar_t__ MMA9551_RSC_OFFSET (int ) ;
 scalar_t__ MMA9551_RSC_RESET ;
 int MMA9551_RSC_VAL (int ) ;
 int mma9551_write_config_byte (struct i2c_client*,int ,scalar_t__,int ) ;

int mma9551_app_reset(struct i2c_client *client, u32 app_mask)
{
 return mma9551_write_config_byte(client, MMA9551_APPID_RSC,
      MMA9551_RSC_RESET +
      MMA9551_RSC_OFFSET(app_mask),
      MMA9551_RSC_VAL(app_mask));
}
