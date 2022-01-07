
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int LTC2990_TINT_MSB ;
 int LTC2990_V1_MSB ;
 int LTC2990_V2_MSB ;
 int LTC2990_V3_MSB ;
 int LTC2990_V4_MSB ;
 int LTC2990_VCC_MSB ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 int sign_extend32 (int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ltc2990_get_value(struct i2c_client *i2c, int index, int *result)
{
 int val;
 u8 reg;

 switch (index) {
 case 135:
  reg = LTC2990_VCC_MSB;
  break;
 case 134:
 case 137:
 case 129:
  reg = LTC2990_V1_MSB;
  break;
 case 133:
  reg = LTC2990_V2_MSB;
  break;
 case 132:
 case 136:
 case 128:
  reg = LTC2990_V3_MSB;
  break;
 case 131:
  reg = LTC2990_V4_MSB;
  break;
 case 130:
  reg = LTC2990_TINT_MSB;
  break;
 default:
  return -EINVAL;
 }

 val = i2c_smbus_read_word_swapped(i2c, reg);
 if (unlikely(val < 0))
  return val;

 switch (index) {
 case 130:
 case 129:
 case 128:

  *result = sign_extend32(val, 12) * 1000 / 16;
  break;
 case 137:
 case 136:

  *result = sign_extend32(val, 14) * 1942 / 100;
  break;
 case 135:

  *result = sign_extend32(val, 14) * 30518 / (100 * 1000) + 2500;
  break;
 case 134:
 case 133:
 case 132:
 case 131:

  *result = sign_extend32(val, 14) * 30518 / (100 * 1000);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
