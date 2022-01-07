
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int MAX7359_CFG_KEY_RELEASE ;
 int MAX7359_CFG_WAKEUP ;
 int MAX7359_REG_CONFIG ;
 int MAX7359_REG_DEBOUNCE ;
 int MAX7359_REG_INTERRUPT ;
 int max7359_fall_deepsleep (struct i2c_client*) ;
 int max7359_write_reg (struct i2c_client*,int ,int) ;

__attribute__((used)) static void max7359_initialize(struct i2c_client *client)
{
 max7359_write_reg(client, MAX7359_REG_CONFIG,
  MAX7359_CFG_KEY_RELEASE |
  MAX7359_CFG_WAKEUP);


 max7359_write_reg(client, MAX7359_REG_DEBOUNCE, 0x1F);


 max7359_write_reg(client, MAX7359_REG_INTERRUPT, 0x01);

 max7359_fall_deepsleep(client);
}
