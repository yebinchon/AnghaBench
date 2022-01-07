
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct dce110_timing_generator {scalar_t__ max_h_total; scalar_t__ max_v_total; scalar_t__ min_h_blank; scalar_t__ min_h_front_porch; scalar_t__ min_h_back_porch; } ;
struct TYPE_2__ {int INTERLACE; } ;
struct dc_crtc_timing {scalar_t__ h_border_right; scalar_t__ h_front_porch; scalar_t__ h_addressable; scalar_t__ timing_3d_format; scalar_t__ h_total; scalar_t__ v_total; scalar_t__ h_border_left; scalar_t__ h_sync_width; TYPE_1__ flags; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;


 int ASSERT (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 scalar_t__ TIMING_3D_FORMAT_NONE ;

bool dce110_timing_generator_validate_timing(
 struct timing_generator *tg,
 const struct dc_crtc_timing *timing,
 enum signal_type signal)
{
 uint32_t h_blank;
 uint32_t h_back_porch, hsync_offset, h_sync_start;

 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 ASSERT(timing != ((void*)0));

 if (!timing)
  return 0;

 hsync_offset = timing->h_border_right + timing->h_front_porch;
 h_sync_start = timing->h_addressable + hsync_offset;


 if (timing->timing_3d_format != TIMING_3D_FORMAT_NONE)
  return 0;


 if (timing->flags.INTERLACE == 1)
  return 0;






 if (timing->h_total > tg110->max_h_total ||
  timing->v_total > tg110->max_v_total)
  return 0;

 h_blank = (timing->h_total - timing->h_addressable -
  timing->h_border_right -
  timing->h_border_left);

 if (h_blank < tg110->min_h_blank)
  return 0;

 if (timing->h_front_porch < tg110->min_h_front_porch)
  return 0;

 h_back_porch = h_blank - (h_sync_start -
  timing->h_addressable -
  timing->h_border_right -
  timing->h_sync_width);

 if (h_back_porch < tg110->min_h_back_porch)
  return 0;

 return 1;
}
