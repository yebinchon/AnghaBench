
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ms5611_state {int client; } ;
typedef int s32 ;


 int MS5611_READ_ADC ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int*) ;

__attribute__((used)) static int ms5611_i2c_read_adc(struct ms5611_state *st, s32 *val)
{
 int ret;
 u8 buf[3];

 ret = i2c_smbus_read_i2c_block_data(st->client, MS5611_READ_ADC,
         3, buf);
 if (ret < 0)
  return ret;

 *val = (buf[0] << 16) | (buf[1] << 8) | buf[2];

 return 0;
}
