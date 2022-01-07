
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct dce112_compressor {int dummy; } ;
struct TYPE_3__ {scalar_t__ LPT_SUPPORT; scalar_t__ FBC_SUPPORT; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int is_enabled; TYPE_2__ options; scalar_t__ attached_inst; int ctx; } ;


 int FBC_CNTL ;
 int FBC_GRPH_COMP_EN ;
 struct dce112_compressor* TO_DCE112_COMPRESSOR (struct compressor*) ;
 int dce112_compressor_disable_lpt (struct compressor*) ;
 scalar_t__ dce112_compressor_is_fbc_enabled_in_hw (struct compressor*,int *) ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmFBC_CNTL ;
 int set_reg_field_value (int ,int ,int ,int ) ;
 int wait_for_fbc_state_changed (struct dce112_compressor*,int) ;

void dce112_compressor_disable_fbc(struct compressor *compressor)
{
 struct dce112_compressor *cp110 = TO_DCE112_COMPRESSOR(compressor);

 if (compressor->options.bits.FBC_SUPPORT &&
  dce112_compressor_is_fbc_enabled_in_hw(compressor, ((void*)0))) {
  uint32_t reg_data;

  reg_data = dm_read_reg(compressor->ctx, mmFBC_CNTL);
  set_reg_field_value(reg_data, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
  dm_write_reg(compressor->ctx, mmFBC_CNTL, reg_data);


  compressor->attached_inst = 0;
  compressor->is_enabled = 0;



  if (compressor->options.bits.LPT_SUPPORT)
   dce112_compressor_disable_lpt(compressor);

  wait_for_fbc_state_changed(cp110, 0);
 }
}
