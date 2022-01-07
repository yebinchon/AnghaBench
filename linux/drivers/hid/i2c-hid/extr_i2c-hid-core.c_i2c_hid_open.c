
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid {int flags; } ;
struct i2c_client {int dummy; } ;
struct hid_device {struct i2c_client* driver_data; } ;


 int I2C_HID_STARTED ;
 struct i2c_hid* i2c_get_clientdata (struct i2c_client*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int i2c_hid_open(struct hid_device *hid)
{
 struct i2c_client *client = hid->driver_data;
 struct i2c_hid *ihid = i2c_get_clientdata(client);

 set_bit(I2C_HID_STARTED, &ihid->flags);
 return 0;
}
