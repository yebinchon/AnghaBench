
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kmx61_data {int odr_bits; int client; } ;


 int KMX61_ACC ;
 int KMX61_ACC_ODR_SHIFT ;
 int KMX61_ALL_STBY ;
 int KMX61_MAG ;
 int KMX61_MAG_ODR_SHIFT ;
 int KMX61_REG_ODCNTL ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int kmx61_convert_freq_to_bit (int,int) ;
 int kmx61_get_mode (struct kmx61_data*,int*,int) ;
 int kmx61_set_mode (struct kmx61_data*,int,int,int) ;
 int kmx61_set_wake_up_odr (struct kmx61_data*,int,int) ;

__attribute__((used)) static int kmx61_set_odr(struct kmx61_data *data, int val, int val2, u8 device)
{
 int ret;
 u8 mode;
 int lodr_bits, odr_bits;

 ret = kmx61_get_mode(data, &mode, KMX61_ACC | KMX61_MAG);
 if (ret < 0)
  return ret;

 lodr_bits = kmx61_convert_freq_to_bit(val, val2);
 if (lodr_bits < 0)
  return lodr_bits;


 ret = kmx61_set_mode(data, KMX61_ALL_STBY, KMX61_ACC | KMX61_MAG,
        1);
 if (ret < 0)
  return ret;

 odr_bits = 0;
 if (device & KMX61_ACC)
  odr_bits |= lodr_bits << KMX61_ACC_ODR_SHIFT;
 if (device & KMX61_MAG)
  odr_bits |= lodr_bits << KMX61_MAG_ODR_SHIFT;

 ret = i2c_smbus_write_byte_data(data->client, KMX61_REG_ODCNTL,
     odr_bits);
 if (ret < 0)
  return ret;

 data->odr_bits = odr_bits;

 if (device & KMX61_ACC) {
  ret = kmx61_set_wake_up_odr(data, val, val2);
  if (ret)
   return ret;
 }

 return kmx61_set_mode(data, mode, KMX61_ACC | KMX61_MAG, 1);
}
