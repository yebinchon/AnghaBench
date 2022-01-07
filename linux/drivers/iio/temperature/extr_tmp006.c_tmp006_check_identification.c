
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int TMP006_DEVICE_ID ;
 int TMP006_DEVICE_MAGIC ;
 int TMP006_MANUFACTURER_ID ;
 int TMP006_MANUFACTURER_MAGIC ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;

__attribute__((used)) static bool tmp006_check_identification(struct i2c_client *client)
{
 int mid, did;

 mid = i2c_smbus_read_word_swapped(client, TMP006_MANUFACTURER_ID);
 if (mid < 0)
  return 0;

 did = i2c_smbus_read_word_swapped(client, TMP006_DEVICE_ID);
 if (did < 0)
  return 0;

 return mid == TMP006_MANUFACTURER_MAGIC && did == TMP006_DEVICE_MAGIC;
}
