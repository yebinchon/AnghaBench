
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce112_compressor {int dummy; } ;
struct compressor {int ctx; } ;


 int DMIF_REG (int ) ;
 int DPGV0_PIPE_STUTTER_CONTROL_NONLPTCH ;
 int DPG_PIPE_STUTTER_CONTROL_NONLPTCH ;
 int GMCON_LPT_TARGET ;
 int LOW_POWER_TILING_CONTROL ;
 int LOW_POWER_TILING_ENABLE ;
 int STCTRL_LPT_TARGET ;
 int STUTTER_ENABLE_NONLPTCH ;
 struct dce112_compressor* TO_DCE112_COMPRESSOR (struct compressor*) ;
 int dm_read_reg (int ,int) ;
 int dm_write_reg (int ,int,int) ;
 int mmDPGV0_PIPE_STUTTER_CONTROL_NONLPTCH ;
 int mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH ;
 int mmGMCON_LPT_TARGET ;
 int mmLOW_POWER_TILING_CONTROL ;
 int set_reg_field_value (int,int,int ,int ) ;

void dce112_compressor_disable_lpt(struct compressor *compressor)
{
 struct dce112_compressor *cp110 = TO_DCE112_COMPRESSOR(compressor);
 uint32_t value;
 uint32_t addr;
 uint32_t inx;


 for (inx = 0; inx < 3; inx++) {
  value =
   dm_read_reg(
    compressor->ctx,
    DMIF_REG(mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH));
  set_reg_field_value(
   value,
   0,
   DPG_PIPE_STUTTER_CONTROL_NONLPTCH,
   STUTTER_ENABLE_NONLPTCH);
  dm_write_reg(
   compressor->ctx,
   DMIF_REG(mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH),
   value);
 }

 addr = mmDPGV0_PIPE_STUTTER_CONTROL_NONLPTCH;
 value = dm_read_reg(compressor->ctx, addr);
 set_reg_field_value(
  value,
  0,
  DPGV0_PIPE_STUTTER_CONTROL_NONLPTCH,
  STUTTER_ENABLE_NONLPTCH);
 dm_write_reg(compressor->ctx, addr, value);


 addr = mmLOW_POWER_TILING_CONTROL;
 value = dm_read_reg(compressor->ctx, addr);
 set_reg_field_value(
  value,
  0,
  LOW_POWER_TILING_CONTROL,
  LOW_POWER_TILING_ENABLE);
 dm_write_reg(compressor->ctx, addr, value);


 addr = mmGMCON_LPT_TARGET;
 value = dm_read_reg(compressor->ctx, addr);
 set_reg_field_value(
  value,
  0xFFFFFFFF,
  GMCON_LPT_TARGET,
  STCTRL_LPT_TARGET);
 dm_write_reg(compressor->ctx, mmGMCON_LPT_TARGET, value);
}
