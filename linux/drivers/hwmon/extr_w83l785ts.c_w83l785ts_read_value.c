
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct i2c_client {TYPE_1__* adapter; struct device dev; } ;
struct TYPE_2__ {struct device dev; } ;


 int MAX_RETRIES ;
 int dev_dbg (struct device*,char*,char const*,int,...) ;
 int dev_err (struct device*,char*,char const*,int) ;
 scalar_t__ i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int msleep (int) ;

__attribute__((used)) static u8 w83l785ts_read_value(struct i2c_client *client, u8 reg, u8 defval)
{
 int value, i;
 struct device *dev;
 const char *prefix;





 if (i2c_get_clientdata(client)) {
  dev = &client->dev;
  prefix = "";
 } else {
  dev = &client->adapter->dev;
  prefix = "w83l785ts: ";
 }






 for (i = 1; i <= MAX_RETRIES; i++) {
  value = i2c_smbus_read_byte_data(client, reg);
  if (value >= 0) {
   dev_dbg(dev, "%sRead 0x%02x from register 0x%02x.\n",
    prefix, value, reg);
   return value;
  }
  dev_dbg(dev, "%sRead failed, will retry in %d.\n", prefix, i);
  msleep(i);
 }

 dev_err(dev, "%sCouldn't read value from register 0x%02x.\n", prefix,
  reg);
 return defval;
}
