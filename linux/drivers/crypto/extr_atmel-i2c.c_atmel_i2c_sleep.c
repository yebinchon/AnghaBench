
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int SLEEP_TOKEN ;
 int i2c_master_send (struct i2c_client*,int *,int) ;

__attribute__((used)) static int atmel_i2c_sleep(struct i2c_client *client)
{
 u8 sleep = SLEEP_TOKEN;

 return i2c_master_send(client, &sleep, 1);
}
