
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u16 ;
struct pmbus_sensor {scalar_t__ class; size_t page; } ;
struct pmbus_data {long* exponent; } ;
typedef int s16 ;


 void* DIV_ROUND_CLOSEST (long,int) ;
 long MAX_MANTISSA ;
 long MIN_MANTISSA ;
 scalar_t__ PSC_FAN ;
 scalar_t__ PSC_POWER ;
 scalar_t__ PSC_VOLTAGE_OUT ;

__attribute__((used)) static u16 pmbus_data2reg_linear(struct pmbus_data *data,
     struct pmbus_sensor *sensor, long val)
{
 s16 exponent = 0, mantissa;
 bool negative = 0;


 if (val == 0)
  return 0;

 if (sensor->class == PSC_VOLTAGE_OUT) {

  if (val < 0)
   return 0;





  if (data->exponent[sensor->page] < 0)
   val <<= -data->exponent[sensor->page];
  else
   val >>= data->exponent[sensor->page];
  val = DIV_ROUND_CLOSEST(val, 1000);
  return val & 0xffff;
 }

 if (val < 0) {
  negative = 1;
  val = -val;
 }


 if (sensor->class == PSC_POWER)
  val = DIV_ROUND_CLOSEST(val, 1000L);





 if (sensor->class == PSC_FAN)
  val = val * 1000;


 while (val >= MAX_MANTISSA && exponent < 15) {
  exponent++;
  val >>= 1;
 }

 while (val < MIN_MANTISSA && exponent > -15) {
  exponent--;
  val <<= 1;
 }


 mantissa = DIV_ROUND_CLOSEST(val, 1000);


 if (mantissa > 0x3ff)
  mantissa = 0x3ff;


 if (negative)
  mantissa = -mantissa;


 return (mantissa & 0x7ff) | ((exponent << 11) & 0xf800);
}
