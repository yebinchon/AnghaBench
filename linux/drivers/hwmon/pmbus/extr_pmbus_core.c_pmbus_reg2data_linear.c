
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u16 ;
struct pmbus_sensor {scalar_t__ class; size_t page; int data; } ;
struct pmbus_data {int* exponent; } ;
typedef long s32 ;
typedef int s16 ;


 scalar_t__ PSC_FAN ;
 scalar_t__ PSC_POWER ;
 scalar_t__ PSC_VOLTAGE_OUT ;

__attribute__((used)) static long pmbus_reg2data_linear(struct pmbus_data *data,
      struct pmbus_sensor *sensor)
{
 s16 exponent;
 s32 mantissa;
 long val;

 if (sensor->class == PSC_VOLTAGE_OUT) {
  exponent = data->exponent[sensor->page];
  mantissa = (u16) sensor->data;
 } else {
  exponent = ((s16)sensor->data) >> 11;
  mantissa = ((s16)((sensor->data & 0x7ff) << 5)) >> 5;
 }

 val = mantissa;


 if (sensor->class != PSC_FAN)
  val = val * 1000L;


 if (sensor->class == PSC_POWER)
  val = val * 1000L;

 if (exponent >= 0)
  val <<= exponent;
 else
  val >>= -exponent;

 return val;
}
