
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tps6507x_ts {int dummy; } ;
typedef scalar_t__ s32 ;


 int TPS6507X_ADCONFIG_INPUT_TSC ;
 int TPS6507X_REG_ADCONFIG ;
 int TPS6507X_REG_INT ;
 int TPS6507X_REG_TSCMODE ;
 int TPS6507X_REG_TSC_INT ;
 int TPS6507X_TSCMODE_STANDBY ;
 int mdelay (int) ;
 scalar_t__ tps6507x_read_u8 (struct tps6507x_ts*,int ,int*) ;
 scalar_t__ tps6507x_write_u8 (struct tps6507x_ts*,int ,int ) ;

__attribute__((used)) static s32 tps6507x_adc_standby(struct tps6507x_ts *tsc)
{
 s32 ret;
 s32 loops = 0;
 u8 val;

 ret = tps6507x_write_u8(tsc, TPS6507X_REG_ADCONFIG,
    TPS6507X_ADCONFIG_INPUT_TSC);
 if (ret)
  return ret;

 ret = tps6507x_write_u8(tsc, TPS6507X_REG_TSCMODE,
    TPS6507X_TSCMODE_STANDBY);
 if (ret)
  return ret;

 ret = tps6507x_read_u8(tsc, TPS6507X_REG_INT, &val);
 if (ret)
  return ret;

 while (val & TPS6507X_REG_TSC_INT) {
  mdelay(10);
  ret = tps6507x_read_u8(tsc, TPS6507X_REG_INT, &val);
  if (ret)
   return ret;
  loops++;
 }

 return ret;
}
