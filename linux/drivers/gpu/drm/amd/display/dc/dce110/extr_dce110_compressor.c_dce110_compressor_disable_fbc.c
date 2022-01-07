
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dce110_compressor {int dummy; } ;
struct TYPE_3__ {scalar_t__ FBC_SUPPORT; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int is_enabled; scalar_t__ attached_inst; int ctx; TYPE_2__ options; } ;


 scalar_t__ CONTROLLER_ID_D0 ;
 scalar_t__ CONTROLLER_ID_D3 ;
 scalar_t__ CONTROLLER_ID_UNDEFINED ;
 int FBC_CNTL ;
 int FBC_GRPH_COMP_EN ;
 struct dce110_compressor* TO_DCE110_COMPRESSOR (struct compressor*) ;
 scalar_t__ dce110_compressor_is_fbc_enabled_in_hw (struct compressor*,scalar_t__*) ;
 scalar_t__ dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,scalar_t__) ;
 int mmFBC_CNTL ;
 int reset_lb_on_vblank (struct compressor*,scalar_t__) ;
 int set_reg_field_value (scalar_t__,int ,int ,int ) ;
 int wait_for_fbc_state_changed (struct dce110_compressor*,int) ;

void dce110_compressor_disable_fbc(struct compressor *compressor)
{
 struct dce110_compressor *cp110 = TO_DCE110_COMPRESSOR(compressor);
 uint32_t crtc_inst = 0;

 if (compressor->options.bits.FBC_SUPPORT) {
  if (dce110_compressor_is_fbc_enabled_in_hw(compressor, &crtc_inst)) {
   uint32_t reg_data;

   reg_data = dm_read_reg(compressor->ctx, mmFBC_CNTL);
   set_reg_field_value(reg_data, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
   dm_write_reg(compressor->ctx, mmFBC_CNTL, reg_data);


   compressor->attached_inst = 0;
   compressor->is_enabled = 0;

   wait_for_fbc_state_changed(cp110, 0);
  }


  if (crtc_inst > CONTROLLER_ID_UNDEFINED && crtc_inst < CONTROLLER_ID_D3)
   reset_lb_on_vblank(compressor,
     crtc_inst - CONTROLLER_ID_D0);
 }
}
