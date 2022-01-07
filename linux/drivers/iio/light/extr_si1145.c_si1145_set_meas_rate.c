
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si1145_data {int client; TYPE_1__* part_info; } ;
struct TYPE_2__ {scalar_t__ uncompressed_meas_rate; } ;


 int SI1145_REG_MEAS_RATE ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int i2c_smbus_write_word_data (int ,int ,int) ;

__attribute__((used)) static int si1145_set_meas_rate(struct si1145_data *data, int interval)
{
 if (data->part_info->uncompressed_meas_rate)
  return i2c_smbus_write_word_data(data->client,
   SI1145_REG_MEAS_RATE, interval);
 else
  return i2c_smbus_write_byte_data(data->client,
   SI1145_REG_MEAS_RATE, interval);
}
