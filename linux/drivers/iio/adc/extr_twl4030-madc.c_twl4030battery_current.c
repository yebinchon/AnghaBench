
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CURR_PSR_R1 ;
 int CURR_PSR_R2 ;
 int CURR_STEP_SIZE ;
 int TWL4030_BCI_BCICTL1 ;
 int TWL4030_BCI_CGAIN ;
 int TWL_MODULE_MAIN_CHARGE ;
 int twl_i2c_read_u8 (int ,int*,int ) ;

__attribute__((used)) static int twl4030battery_current(int raw_volt)
{
 int ret;
 u8 val;

 ret = twl_i2c_read_u8(TWL_MODULE_MAIN_CHARGE, &val,
  TWL4030_BCI_BCICTL1);
 if (ret)
  return ret;
 if (val & TWL4030_BCI_CGAIN)
  return (raw_volt * CURR_STEP_SIZE) / CURR_PSR_R1;
 else
  return (raw_volt * CURR_STEP_SIZE) / CURR_PSR_R2;
}
