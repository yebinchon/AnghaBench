
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int abs (int) ;
 int hid_sensor_convert_exponent (int) ;
 int int_pow (int,int) ;

__attribute__((used)) static u32 convert_to_vtf_format(int size, int exp, int val1, int val2)
{
 int divisor;
 u32 value;
 int sign = 1;

 if (val1 < 0 || val2 < 0)
  sign = -1;
 exp = hid_sensor_convert_exponent(exp);
 if (exp < 0) {
  divisor = int_pow(10, 6 + exp);
  value = abs(val1) * int_pow(10, -exp);
  value += abs(val2) / divisor;
 } else {
  divisor = int_pow(10, exp);
  value = abs(val1) / divisor;
 }
 if (sign < 0)
  value = ((1LL << (size * 8)) - value);

 return value;
}
