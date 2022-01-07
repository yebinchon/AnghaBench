
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct transform {int ctx; } ;


 int COL_MAN_GAMMA_CORR_MEM_PWR_DIS ;
 int COL_MAN_INPUT_GAMMA_MEM_PWR_DIS ;
 int DCFEV_MEM_PWR_CTRL ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 scalar_t__ get_reg_field_value (int ,int ,int ) ;
 int mmDCFEV_MEM_PWR_CTRL ;
 int set_reg_field_value (int ,int,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void power_on_lut(struct transform *xfm,
 bool power_on, bool inputgamma, bool regamma)
{
 uint32_t value = dm_read_reg(xfm->ctx, mmDCFEV_MEM_PWR_CTRL);
 int i;

 if (power_on) {
  if (inputgamma)
   set_reg_field_value(
    value,
    1,
    DCFEV_MEM_PWR_CTRL,
    COL_MAN_INPUT_GAMMA_MEM_PWR_DIS);
  if (regamma)
   set_reg_field_value(
    value,
    1,
    DCFEV_MEM_PWR_CTRL,
    COL_MAN_GAMMA_CORR_MEM_PWR_DIS);
 } else {
  if (inputgamma)
   set_reg_field_value(
    value,
    0,
    DCFEV_MEM_PWR_CTRL,
    COL_MAN_INPUT_GAMMA_MEM_PWR_DIS);
  if (regamma)
   set_reg_field_value(
    value,
    0,
    DCFEV_MEM_PWR_CTRL,
    COL_MAN_GAMMA_CORR_MEM_PWR_DIS);
 }

 dm_write_reg(xfm->ctx, mmDCFEV_MEM_PWR_CTRL, value);

 for (i = 0; i < 3; i++) {
  value = dm_read_reg(xfm->ctx, mmDCFEV_MEM_PWR_CTRL);
  if (get_reg_field_value(value,
    DCFEV_MEM_PWR_CTRL,
    COL_MAN_INPUT_GAMMA_MEM_PWR_DIS) &&
   get_reg_field_value(value,
     DCFEV_MEM_PWR_CTRL,
     COL_MAN_GAMMA_CORR_MEM_PWR_DIS))
   break;

  udelay(2);
 }
}
