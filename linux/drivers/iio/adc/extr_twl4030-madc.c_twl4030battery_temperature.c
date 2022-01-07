
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int REG_BCICTL2 ;
 int TEMP_PSR_R ;
 int TEMP_STEP_SIZE ;
 int TWL4030_BCI_ITHSENS ;
 int TWL_MODULE_MAIN_CHARGE ;
 int* twl4030_therm_tbl ;
 int twl_i2c_read_u8 (int ,int*,int ) ;

__attribute__((used)) static int twl4030battery_temperature(int raw_volt)
{
 u8 val;
 int temp, curr, volt, res, ret;

 volt = (raw_volt * TEMP_STEP_SIZE) / TEMP_PSR_R;

 ret = twl_i2c_read_u8(TWL_MODULE_MAIN_CHARGE, &val,
  REG_BCICTL2);
 if (ret < 0)
  return ret;

 curr = ((val & TWL4030_BCI_ITHSENS) + 1) * 10;

 res = volt * 1000 / curr;

 for (temp = 58; temp >= 0; temp--) {
  int actual = twl4030_therm_tbl[temp];
  if ((actual - res) >= 0)
   break;
 }

 return temp + 1;
}
