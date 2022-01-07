
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid {int dummy; } ;
struct i2c_client {int irq; } ;


 int I2C_HID_PWR_SLEEP ;
 int free_irq (int ,struct i2c_hid*) ;
 struct i2c_hid* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_hid_set_power (struct i2c_client*,int ) ;

__attribute__((used)) static void i2c_hid_shutdown(struct i2c_client *client)
{
 struct i2c_hid *ihid = i2c_get_clientdata(client);

 i2c_hid_set_power(client, I2C_HID_PWR_SLEEP);
 free_irq(client->irq, ihid);
}
