
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {TYPE_2__* funcs; } ;
struct optc {int signal; int vready_offset; int vstartup_start; int vupdate_offset; int vupdate_width; int opp_count; } ;
struct TYPE_3__ {int INTERLACE; scalar_t__ VSYNC_POSITIVE_POLARITY; scalar_t__ HSYNC_POSITIVE_POLARITY; } ;
struct dc_crtc_timing {int h_total; int h_sync_width; int h_front_porch; int h_border_right; int h_addressable; int h_border_left; int v_total; int v_sync_width; int v_front_porch; int v_border_bottom; int v_addressable; int v_border_top; TYPE_1__ flags; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum h_timing_div_mode { ____Placeholder_h_timing_div_mode } h_timing_div_mode ;
struct TYPE_4__ {int (* set_vtg_params ) (struct timing_generator*,struct dc_crtc_timing const*) ;int (* program_global_sync ) (struct timing_generator*,int,int,int,int) ;} ;


 int CONTROL ;
 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int H_TIMING_DIV_BY2 ;
 int H_TIMING_NO_DIV ;
 int OTG_CONTROL ;
 int OTG_FIELD_NUMBER_CNTL ;
 int OTG_H_BLANK_END ;
 int OTG_H_BLANK_START ;
 int OTG_H_BLANK_START_END ;
 int OTG_H_SYNC_A ;
 int OTG_H_SYNC_A_CNTL ;
 int OTG_H_SYNC_A_END ;
 int OTG_H_SYNC_A_POL ;
 int OTG_H_SYNC_A_START ;
 int OTG_H_TIMING_CNTL ;
 int OTG_H_TIMING_DIV_BY2 ;
 int OTG_H_TOTAL ;
 int OTG_INTERLACE_CONTROL ;
 int OTG_INTERLACE_ENABLE ;
 int OTG_START_POINT_CNTL ;
 int OTG_V_BLANK_END ;
 int OTG_V_BLANK_START ;
 int OTG_V_BLANK_START_END ;
 int OTG_V_SYNC_A ;
 int OTG_V_SYNC_A_CNTL ;
 int OTG_V_SYNC_A_END ;
 int OTG_V_SYNC_A_POL ;
 int OTG_V_SYNC_A_START ;
 int OTG_V_TOTAL ;
 int OTG_V_TOTAL_MAX ;
 int OTG_V_TOTAL_MIN ;
 scalar_t__ REG (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 scalar_t__ SIGNAL_TYPE_DISPLAY_PORT ;
 scalar_t__ SIGNAL_TYPE_DISPLAY_PORT_MST ;
 scalar_t__ SIGNAL_TYPE_EDP ;
 int VTG0_ENABLE ;
 int apply_front_porch_workaround (struct dc_crtc_timing*) ;
 scalar_t__ optc1_is_two_pixels_per_containter (struct dc_crtc_timing*) ;
 int stub1 (struct timing_generator*,int,int,int,int) ;
 int stub2 (struct timing_generator*,struct dc_crtc_timing const*) ;

void optc1_program_timing(
 struct timing_generator *optc,
 const struct dc_crtc_timing *dc_crtc_timing,
 int vready_offset,
 int vstartup_start,
 int vupdate_offset,
 int vupdate_width,
 const enum signal_type signal,
 bool use_vbios)
{
 struct dc_crtc_timing patched_crtc_timing;
 uint32_t asic_blank_end;
 uint32_t asic_blank_start;
 uint32_t v_total;
 uint32_t v_sync_end;
 uint32_t h_sync_polarity, v_sync_polarity;
 uint32_t start_point = 0;
 uint32_t field_num = 0;
 enum h_timing_div_mode h_div = H_TIMING_NO_DIV;

 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 optc1->signal = signal;
 optc1->vready_offset = vready_offset;
 optc1->vstartup_start = vstartup_start;
 optc1->vupdate_offset = vupdate_offset;
 optc1->vupdate_width = vupdate_width;
 patched_crtc_timing = *dc_crtc_timing;
 apply_front_porch_workaround(&patched_crtc_timing);




 REG_SET(OTG_H_TOTAL, 0,
   OTG_H_TOTAL, patched_crtc_timing.h_total - 1);


 REG_UPDATE_2(OTG_H_SYNC_A,
   OTG_H_SYNC_A_START, 0,
   OTG_H_SYNC_A_END, patched_crtc_timing.h_sync_width);


 asic_blank_start = patched_crtc_timing.h_total -
   patched_crtc_timing.h_front_porch;


 asic_blank_end = asic_blank_start -
   patched_crtc_timing.h_border_right -
   patched_crtc_timing.h_addressable -
   patched_crtc_timing.h_border_left;

 REG_UPDATE_2(OTG_H_BLANK_START_END,
   OTG_H_BLANK_START, asic_blank_start,
   OTG_H_BLANK_END, asic_blank_end);


 h_sync_polarity = patched_crtc_timing.flags.HSYNC_POSITIVE_POLARITY ?
   0 : 1;

 REG_UPDATE(OTG_H_SYNC_A_CNTL,
   OTG_H_SYNC_A_POL, h_sync_polarity);

 v_total = patched_crtc_timing.v_total - 1;

 REG_SET(OTG_V_TOTAL, 0,
   OTG_V_TOTAL, v_total);




 REG_SET(OTG_V_TOTAL_MAX, 0,
  OTG_V_TOTAL_MAX, v_total);
 REG_SET(OTG_V_TOTAL_MIN, 0,
  OTG_V_TOTAL_MIN, v_total);


 v_sync_end = patched_crtc_timing.v_sync_width;

 REG_UPDATE_2(OTG_V_SYNC_A,
   OTG_V_SYNC_A_START, 0,
   OTG_V_SYNC_A_END, v_sync_end);


 asic_blank_start = patched_crtc_timing.v_total -
   patched_crtc_timing.v_front_porch;


 asic_blank_end = asic_blank_start -
   patched_crtc_timing.v_border_bottom -
   patched_crtc_timing.v_addressable -
   patched_crtc_timing.v_border_top;

 REG_UPDATE_2(OTG_V_BLANK_START_END,
   OTG_V_BLANK_START, asic_blank_start,
   OTG_V_BLANK_END, asic_blank_end);


 v_sync_polarity = patched_crtc_timing.flags.VSYNC_POSITIVE_POLARITY ?
   0 : 1;

 REG_UPDATE(OTG_V_SYNC_A_CNTL,
  OTG_V_SYNC_A_POL, v_sync_polarity);

 if (optc1->signal == SIGNAL_TYPE_DISPLAY_PORT ||
   optc1->signal == SIGNAL_TYPE_DISPLAY_PORT_MST ||
   optc1->signal == SIGNAL_TYPE_EDP) {
  start_point = 1;
  if (patched_crtc_timing.flags.INTERLACE == 1)
   field_num = 1;
 }


 if (REG(OTG_INTERLACE_CONTROL)) {
  if (patched_crtc_timing.flags.INTERLACE == 1)
   REG_UPDATE(OTG_INTERLACE_CONTROL,
     OTG_INTERLACE_ENABLE, 1);
  else
   REG_UPDATE(OTG_INTERLACE_CONTROL,
     OTG_INTERLACE_ENABLE, 0);
 }


 REG_UPDATE(CONTROL,
   VTG0_ENABLE, 0);


 REG_UPDATE_2(OTG_CONTROL,
   OTG_START_POINT_CNTL, start_point,
   OTG_FIELD_NUMBER_CNTL, field_num);

 optc->funcs->program_global_sync(optc,
   vready_offset,
   vstartup_start,
   vupdate_offset,
   vupdate_width);

 optc->funcs->set_vtg_params(optc, dc_crtc_timing);
 if (optc1_is_two_pixels_per_containter(&patched_crtc_timing) || optc1->opp_count == 2)
  h_div = H_TIMING_DIV_BY2;

 REG_UPDATE(OTG_H_TIMING_CNTL,
  OTG_H_TIMING_DIV_BY2, h_div);
}
