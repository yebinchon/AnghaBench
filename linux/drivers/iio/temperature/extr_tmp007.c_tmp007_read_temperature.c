
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tmp007_data {int client; } ;
typedef int s32 ;


 int EIO ;
 int TMP007_STATUS ;
 int TMP007_STATUS_CONV_READY ;
 int TMP007_STATUS_DATA_VALID ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static int tmp007_read_temperature(struct tmp007_data *data, u8 reg)
{
 s32 ret;
 int tries = 50;

 while (tries-- > 0) {
  ret = i2c_smbus_read_word_swapped(data->client,
   TMP007_STATUS);
  if (ret < 0)
   return ret;
  if ((ret & TMP007_STATUS_CONV_READY) &&
   !(ret & TMP007_STATUS_DATA_VALID))
    break;
  msleep(100);
 }

 if (tries < 0)
  return -EIO;

 return i2c_smbus_read_word_swapped(data->client, reg);
}
