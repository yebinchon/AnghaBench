
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int __be16 ;


 int MMA9551_CMD_WRITE_CONFIG ;
 int cpu_to_be16 (int ) ;
 int mma9551_transfer (struct i2c_client*,int ,int ,int ,int *,int,int *,int ) ;

int mma9551_write_config_word(struct i2c_client *client, u8 app_id,
         u16 reg, u16 val)
{
 __be16 v = cpu_to_be16(val);

 return mma9551_transfer(client, app_id, MMA9551_CMD_WRITE_CONFIG, reg,
    (u8 *)&v, 2, ((void*)0), 0);
}
