
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_hid_platform_data {int post_power_delay_ms; } ;
struct i2c_client {int dev; } ;


 int device_property_read_u32 (int *,char*,int *) ;

__attribute__((used)) static void i2c_hid_fwnode_probe(struct i2c_client *client,
     struct i2c_hid_platform_data *pdata)
{
 u32 val;

 if (!device_property_read_u32(&client->dev, "post-power-on-delay-ms",
          &val))
  pdata->post_power_delay_ms = val;
}
