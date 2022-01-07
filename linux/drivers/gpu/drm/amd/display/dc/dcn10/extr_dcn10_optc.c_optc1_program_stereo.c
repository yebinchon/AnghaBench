
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct dc_crtc_timing {int dummy; } ;
struct crtc_stereo_flags {scalar_t__ PROGRAM_STEREO; } ;


 int optc1_disable_stereo (struct timing_generator*) ;
 int optc1_enable_stereo (struct timing_generator*,struct dc_crtc_timing const*,struct crtc_stereo_flags*) ;

void optc1_program_stereo(struct timing_generator *optc,
 const struct dc_crtc_timing *timing, struct crtc_stereo_flags *flags)
{
 if (flags->PROGRAM_STEREO)
  optc1_enable_stereo(optc, timing, flags);
 else
  optc1_disable_stereo(optc);
}
