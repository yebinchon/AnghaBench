
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct silead_ts_data {int max_fingers; int fw_name; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int dev_dbg (struct device*,char*,...) ;
 int device_property_read_string (struct device*,char*,char const**) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 struct silead_ts_data* i2c_get_clientdata (struct i2c_client*) ;
 int snprintf (int ,int,char*,char const*) ;

__attribute__((used)) static void silead_ts_read_props(struct i2c_client *client)
{
 struct silead_ts_data *data = i2c_get_clientdata(client);
 struct device *dev = &client->dev;
 const char *str;
 int error;

 error = device_property_read_u32(dev, "silead,max-fingers",
      &data->max_fingers);
 if (error) {
  dev_dbg(dev, "Max fingers read error %d\n", error);
  data->max_fingers = 5;
 }

 error = device_property_read_string(dev, "firmware-name", &str);
 if (!error)
  snprintf(data->fw_name, sizeof(data->fw_name),
    "silead/%s", str);
 else
  dev_dbg(dev, "Firmware file name read error. Using default.");
}
