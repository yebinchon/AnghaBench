
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zopt2201_data {int gain; int client; } ;


 int ZOPT2201_LS_GAIN ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int zopt2201_set_gain(struct zopt2201_data *data, u8 gain)
{
 int ret;

 ret = i2c_smbus_write_byte_data(data->client, ZOPT2201_LS_GAIN, gain);
 if (ret < 0)
  return ret;

 data->gain = gain;

 return 0;
}
