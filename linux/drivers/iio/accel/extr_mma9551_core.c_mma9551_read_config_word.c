
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int __be16 ;


 int MMA9551_CMD_READ_CONFIG ;
 int be16_to_cpu (int ) ;
 int mma9551_transfer (struct i2c_client*,int ,int ,int ,int *,int ,int *,int) ;

int mma9551_read_config_word(struct i2c_client *client, u8 app_id,
        u16 reg, u16 *val)
{
 int ret;
 __be16 v;

 ret = mma9551_transfer(client, app_id, MMA9551_CMD_READ_CONFIG,
          reg, ((void*)0), 0, (u8 *)&v, 2);
 *val = be16_to_cpu(v);

 return ret;
}
