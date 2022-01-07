
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct output_pixel_processor {int dummy; } ;
struct dcn10_opp {int dummy; } ;
struct dc_crtc_timing {scalar_t__ timing_3d_format; scalar_t__ v_addressable; scalar_t__ v_total; scalar_t__ h_border_right; scalar_t__ h_addressable; } ;


 int FMT_CONTROL ;
 int FMT_STEREOSYNC_OVERRIDE ;
 int OPPBUF_3D_PARAMETERS_0 ;
 int OPPBUF_3D_VACT_SPACE1_SIZE ;
 int OPPBUF_3D_VACT_SPACE2_SIZE ;
 int OPPBUF_ACTIVE_WIDTH ;
 int OPPBUF_CONTROL ;
 int REG_UPDATE (int ,int ,scalar_t__) ;
 scalar_t__ TIMING_3D_FORMAT_FRAME_ALTERNATE ;
 struct dcn10_opp* TO_DCN10_OPP (struct output_pixel_processor*) ;

void opp1_program_stereo(
 struct output_pixel_processor *opp,
 bool enable,
 const struct dc_crtc_timing *timing)
{
 struct dcn10_opp *oppn10 = TO_DCN10_OPP(opp);

 uint32_t active_width = timing->h_addressable - timing->h_border_right - timing->h_border_right;
 uint32_t space1_size = timing->v_total - timing->v_addressable;

 uint32_t space2_size = timing->v_total - timing->v_addressable;

 if (!enable) {
  active_width = 0;
  space1_size = 0;
  space2_size = 0;
 }


 REG_UPDATE(FMT_CONTROL, FMT_STEREOSYNC_OVERRIDE, 0);

 REG_UPDATE(OPPBUF_CONTROL, OPPBUF_ACTIVE_WIDTH, active_width);






 if (timing->timing_3d_format == TIMING_3D_FORMAT_FRAME_ALTERNATE)
  REG_UPDATE(OPPBUF_3D_PARAMETERS_0, OPPBUF_3D_VACT_SPACE2_SIZE, space2_size);
 else
  REG_UPDATE(OPPBUF_3D_PARAMETERS_0, OPPBUF_3D_VACT_SPACE1_SIZE, space1_size);
}
