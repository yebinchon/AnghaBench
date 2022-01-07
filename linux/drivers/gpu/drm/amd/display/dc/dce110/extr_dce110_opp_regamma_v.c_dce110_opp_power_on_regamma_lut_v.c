
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct transform {int ctx; } ;


 int COL_MAN_GAMMA_CORR_MEM_PWR_DIS ;
 int COL_MAN_GAMMA_CORR_MEM_PWR_FORCE ;
 int COL_MAN_INPUT_GAMMA_MEM_PWR_DIS ;
 int COL_MAN_INPUT_GAMMA_MEM_PWR_FORCE ;
 int DCFEV_MEM_PWR_CTRL ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmDCFEV_MEM_PWR_CTRL ;
 int set_reg_field_value (int ,int,int ,int ) ;

void dce110_opp_power_on_regamma_lut_v(
 struct transform *xfm,
 bool power_on)
{
 uint32_t value = dm_read_reg(xfm->ctx, mmDCFEV_MEM_PWR_CTRL);

 set_reg_field_value(
  value,
  0,
  DCFEV_MEM_PWR_CTRL,
  COL_MAN_GAMMA_CORR_MEM_PWR_FORCE);

 set_reg_field_value(
  value,
  power_on,
  DCFEV_MEM_PWR_CTRL,
  COL_MAN_GAMMA_CORR_MEM_PWR_DIS);

 set_reg_field_value(
  value,
  0,
  DCFEV_MEM_PWR_CTRL,
  COL_MAN_INPUT_GAMMA_MEM_PWR_FORCE);

 set_reg_field_value(
  value,
  power_on,
  DCFEV_MEM_PWR_CTRL,
  COL_MAN_INPUT_GAMMA_MEM_PWR_DIS);

 dm_write_reg(xfm->ctx, mmDCFEV_MEM_PWR_CTRL, value);
}
