
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct dc_crtc_timing {int dummy; } ;


 int SIGNAL_TYPE_NONE ;
 int dce110_timing_generator_validate_timing (struct timing_generator*,struct dc_crtc_timing const*,int ) ;

bool dce110_tg_validate_timing(struct timing_generator *tg,
 const struct dc_crtc_timing *timing)
{
 return dce110_timing_generator_validate_timing(tg, timing, SIGNAL_TYPE_NONE);
}
