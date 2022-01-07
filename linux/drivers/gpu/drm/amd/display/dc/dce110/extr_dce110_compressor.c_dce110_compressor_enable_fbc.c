
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct dce110_compressor {int dummy; } ;
struct TYPE_3__ {scalar_t__ FBC_SUPPORT; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int is_enabled; int ctx; scalar_t__ attached_inst; TYPE_2__ options; } ;
struct compr_addr_and_pitch_params {int inst; } ;


 scalar_t__ CONTROLLER_ID_D0 ;
 int FBC_CNTL ;
 int FBC_DECOMPRESS_ERROR_CLEAR ;
 int FBC_GRPH_COMP_EN ;
 int FBC_INVALIDATE_ON_ERROR ;
 int FBC_MISC ;
 int FBC_SLOW_REQ_INTERVAL ;
 int FBC_SRC_SEL ;
 struct dce110_compressor* TO_DCE110_COMPRESSOR (struct compressor*) ;
 int dce110_compressor_is_fbc_enabled_in_hw (struct compressor*,int *) ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmFBC_CNTL ;
 int mmFBC_MISC ;
 int set_reg_field_value (int ,int,int ,int ) ;
 int wait_for_fbc_state_changed (struct dce110_compressor*,int) ;

void dce110_compressor_enable_fbc(
 struct compressor *compressor,
 struct compr_addr_and_pitch_params *params)
{
 struct dce110_compressor *cp110 = TO_DCE110_COMPRESSOR(compressor);

 if (compressor->options.bits.FBC_SUPPORT &&
  (!dce110_compressor_is_fbc_enabled_in_hw(compressor, ((void*)0)))) {

  uint32_t addr;
  uint32_t value, misc_value;

  addr = mmFBC_CNTL;
  value = dm_read_reg(compressor->ctx, addr);
  set_reg_field_value(value, 1, FBC_CNTL, FBC_GRPH_COMP_EN);

  set_reg_field_value(
   value,
   params->inst,
   FBC_CNTL, FBC_SRC_SEL);
  dm_write_reg(compressor->ctx, addr, value);


  compressor->is_enabled = 1;



  compressor->attached_inst = params->inst + CONTROLLER_ID_D0;


  set_reg_field_value(value, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
  dm_write_reg(compressor->ctx, addr, value);


  misc_value = dm_read_reg(compressor->ctx, mmFBC_MISC);

  set_reg_field_value(misc_value, 1,
    FBC_MISC, FBC_INVALIDATE_ON_ERROR);
  set_reg_field_value(misc_value, 1,
    FBC_MISC, FBC_DECOMPRESS_ERROR_CLEAR);
  set_reg_field_value(misc_value, 0x14,
    FBC_MISC, FBC_SLOW_REQ_INTERVAL);

  dm_write_reg(compressor->ctx, mmFBC_MISC, misc_value);


  set_reg_field_value(value, 1, FBC_CNTL, FBC_GRPH_COMP_EN);
  dm_write_reg(compressor->ctx, addr, value);

  wait_for_fbc_state_changed(cp110, 1);
 }
}
