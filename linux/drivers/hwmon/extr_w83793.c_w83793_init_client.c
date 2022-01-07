
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int W83793_REG_CONFIG ;
 scalar_t__ reset ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static void w83793_init_client(struct i2c_client *client)
{
 if (reset)
  w83793_write_value(client, W83793_REG_CONFIG, 0x80);


 w83793_write_value(client, W83793_REG_CONFIG,
      w83793_read_value(client, W83793_REG_CONFIG) | 0x01);
}
