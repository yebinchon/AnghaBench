
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pmbus_sensor {size_t class; } ;
struct pmbus_data {TYPE_1__* info; } ;
typedef int s64 ;
typedef int s32 ;
struct TYPE_2__ {int* m; int* b; int* R; } ;


 size_t PSC_FAN ;
 size_t PSC_POWER ;
 size_t PSC_PWM ;
 int S16_MAX ;
 int S16_MIN ;
 int clamp_val (int,int ,int ) ;
 int div_s64 (int,long) ;

__attribute__((used)) static u16 pmbus_data2reg_direct(struct pmbus_data *data,
     struct pmbus_sensor *sensor, long val)
{
 s64 b, val64 = val;
 s32 m, R;

 m = data->info->m[sensor->class];
 b = data->info->b[sensor->class];
 R = data->info->R[sensor->class];


 if (sensor->class == PSC_POWER) {
  R -= 3;
  b *= 1000;
 }


 if (!(sensor->class == PSC_FAN || sensor->class == PSC_PWM)) {
  R -= 3;
  b *= 1000;
 }
 val64 = val64 * m + b;

 while (R > 0) {
  val64 *= 10;
  R--;
 }
 while (R < 0) {
  val64 = div_s64(val64 + 5LL, 10L);
  R++;
 }

 return (u16)clamp_val(val64, S16_MIN, S16_MAX);
}
