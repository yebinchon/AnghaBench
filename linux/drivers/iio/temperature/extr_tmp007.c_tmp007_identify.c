
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int TMP007_DEVICE_ID ;
 int TMP007_DEVICE_MAGIC ;
 int TMP007_MANUFACTURER_ID ;
 int TMP007_MANUFACTURER_MAGIC ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;

__attribute__((used)) static bool tmp007_identify(struct i2c_client *client)
{
 int manf_id, dev_id;

 manf_id = i2c_smbus_read_word_swapped(client, TMP007_MANUFACTURER_ID);
 if (manf_id < 0)
  return 0;

 dev_id = i2c_smbus_read_word_swapped(client, TMP007_DEVICE_ID);
 if (dev_id < 0)
  return 0;

 return (manf_id == TMP007_MANUFACTURER_MAGIC && dev_id == TMP007_DEVICE_MAGIC);
}
