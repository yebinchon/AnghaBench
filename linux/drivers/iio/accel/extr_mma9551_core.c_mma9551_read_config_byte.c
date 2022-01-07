
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int MMA9551_CMD_READ_CONFIG ;
 int mma9551_transfer (struct i2c_client*,int ,int ,int ,int *,int ,int *,int) ;

int mma9551_read_config_byte(struct i2c_client *client, u8 app_id,
        u16 reg, u8 *val)
{
 return mma9551_transfer(client, app_id, MMA9551_CMD_READ_CONFIG,
    reg, ((void*)0), 0, val, 1);
}
