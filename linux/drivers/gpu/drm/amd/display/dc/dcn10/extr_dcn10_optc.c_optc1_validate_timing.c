
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {scalar_t__ max_h_total; scalar_t__ max_v_total; scalar_t__ min_h_blank; scalar_t__ min_h_sync_width; scalar_t__ min_v_sync_width; scalar_t__ min_v_blank_interlace; scalar_t__ min_v_blank; } ;
struct TYPE_2__ {int INTERLACE; } ;
struct dc_crtc_timing {scalar_t__ v_total; scalar_t__ v_addressable; scalar_t__ v_border_top; scalar_t__ v_border_bottom; scalar_t__ h_total; scalar_t__ h_addressable; scalar_t__ h_border_right; scalar_t__ h_border_left; scalar_t__ timing_3d_format; scalar_t__ h_sync_width; scalar_t__ v_sync_width; TYPE_1__ flags; } ;


 int ASSERT (int ) ;
 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 scalar_t__ TIMING_3D_FORMAT_FRAME_ALTERNATE ;
 scalar_t__ TIMING_3D_FORMAT_HW_FRAME_PACKING ;
 scalar_t__ TIMING_3D_FORMAT_INBAND_FA ;
 scalar_t__ TIMING_3D_FORMAT_NONE ;
 scalar_t__ TIMING_3D_FORMAT_SIDE_BY_SIDE ;
 scalar_t__ TIMING_3D_FORMAT_TOP_AND_BOTTOM ;

bool optc1_validate_timing(
 struct timing_generator *optc,
 const struct dc_crtc_timing *timing)
{
 uint32_t v_blank;
 uint32_t h_blank;
 uint32_t min_v_blank;
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 ASSERT(timing != ((void*)0));

 v_blank = (timing->v_total - timing->v_addressable -
     timing->v_border_top - timing->v_border_bottom);

 h_blank = (timing->h_total - timing->h_addressable -
  timing->h_border_right -
  timing->h_border_left);

 if (timing->timing_3d_format != TIMING_3D_FORMAT_NONE &&
  timing->timing_3d_format != TIMING_3D_FORMAT_HW_FRAME_PACKING &&
  timing->timing_3d_format != TIMING_3D_FORMAT_TOP_AND_BOTTOM &&
  timing->timing_3d_format != TIMING_3D_FORMAT_SIDE_BY_SIDE &&
  timing->timing_3d_format != TIMING_3D_FORMAT_FRAME_ALTERNATE &&
  timing->timing_3d_format != TIMING_3D_FORMAT_INBAND_FA)
  return 0;


 if (timing->flags.INTERLACE == 1)
  return 0;






 if (timing->h_total > optc1->max_h_total ||
  timing->v_total > optc1->max_v_total)
  return 0;


 if (h_blank < optc1->min_h_blank)
  return 0;

 if (timing->h_sync_width < optc1->min_h_sync_width ||
   timing->v_sync_width < optc1->min_v_sync_width)
  return 0;

 min_v_blank = timing->flags.INTERLACE?optc1->min_v_blank_interlace:optc1->min_v_blank;

 if (v_blank < min_v_blank)
  return 0;

 return 1;

}
