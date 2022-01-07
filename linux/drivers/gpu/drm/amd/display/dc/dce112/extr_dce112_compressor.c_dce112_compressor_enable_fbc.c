
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct dce112_compressor {int offsets; } ;
struct TYPE_3__ {scalar_t__ DUMMY_BACKEND; scalar_t__ LPT_SUPPORT; scalar_t__ FBC_SUPPORT; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int is_enabled; int attached_inst; int ctx; TYPE_2__ options; } ;
struct compr_addr_and_pitch_params {int source_view_width; int source_view_height; int inst; } ;


 int FBC_CNTL ;
 int FBC_GRPH_COMP_EN ;
 int FBC_SRC_SEL ;
 struct dce112_compressor* TO_DCE112_COMPRESSOR (struct compressor*) ;
 int dce112_compressor_enable_lpt (struct compressor*) ;
 int dce112_compressor_is_fbc_enabled_in_hw (struct compressor*,int *) ;
 int dce11_one_lpt_channel_max_resolution ;
 int dm_read_reg (int ,int) ;
 int dm_write_reg (int ,int,int) ;
 int is_source_bigger_than_epanel_size (struct dce112_compressor*,int,int) ;
 int mmFBC_CNTL ;
 int * reg_offsets ;
 int set_reg_field_value (int,int,int ,int ) ;
 int wait_for_fbc_state_changed (struct dce112_compressor*,int) ;

void dce112_compressor_enable_fbc(
 struct compressor *compressor,
 uint32_t paths_num,
 struct compr_addr_and_pitch_params *params)
{
 struct dce112_compressor *cp110 = TO_DCE112_COMPRESSOR(compressor);

 if (compressor->options.bits.FBC_SUPPORT &&
  (compressor->options.bits.DUMMY_BACKEND == 0) &&
  (!dce112_compressor_is_fbc_enabled_in_hw(compressor, ((void*)0))) &&
  (!is_source_bigger_than_epanel_size(
   cp110,
   params->source_view_width,
   params->source_view_height))) {

  uint32_t addr;
  uint32_t value;




  if (compressor->options.bits.LPT_SUPPORT && (paths_num < 2) &&
   (params->source_view_width *
    params->source_view_height <=
    dce11_one_lpt_channel_max_resolution)) {
   dce112_compressor_enable_lpt(compressor);
  }

  addr = mmFBC_CNTL;
  value = dm_read_reg(compressor->ctx, addr);
  set_reg_field_value(value, 1, FBC_CNTL, FBC_GRPH_COMP_EN);
  set_reg_field_value(
   value,
   params->inst,
   FBC_CNTL, FBC_SRC_SEL);
  dm_write_reg(compressor->ctx, addr, value);


  compressor->is_enabled = 1;
  compressor->attached_inst = params->inst;
  cp110->offsets = reg_offsets[params->inst];


  set_reg_field_value(value, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
  dm_write_reg(compressor->ctx, addr, value);
  set_reg_field_value(value, 1, FBC_CNTL, FBC_GRPH_COMP_EN);
  dm_write_reg(compressor->ctx, addr, value);

  wait_for_fbc_state_changed(cp110, 1);
 }
}
