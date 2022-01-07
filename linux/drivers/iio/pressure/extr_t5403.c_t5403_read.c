
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t5403_data {int mode; int client; } ;


 int T5403_COMMAND ;
 int T5403_DATA ;
 int T5403_MODE_SHIFT ;
 int T5403_PT ;
 int T5403_SCO ;
 int i2c_smbus_read_word_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int msleep (int) ;
 int* t5403_pressure_conv_ms ;

__attribute__((used)) static int t5403_read(struct t5403_data *data, bool pressure)
{
 int wait_time = 3;

 int ret = i2c_smbus_write_byte_data(data->client, T5403_COMMAND,
  (pressure ? (data->mode << T5403_MODE_SHIFT) : T5403_PT) |
  T5403_SCO);
 if (ret < 0)
  return ret;

 wait_time += pressure ? t5403_pressure_conv_ms[data->mode] : 2;

 msleep(wait_time);

 return i2c_smbus_read_word_data(data->client, T5403_DATA);
}
