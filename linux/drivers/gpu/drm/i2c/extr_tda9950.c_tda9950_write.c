
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int tda9950_write_range (struct i2c_client*,int ,int *,int) ;

__attribute__((used)) static void tda9950_write(struct i2c_client *client, u8 addr, u8 val)
{
 tda9950_write_range(client, addr, &val, 1);
}
