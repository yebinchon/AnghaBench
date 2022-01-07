
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;


 int dce110_timing_generator_v_blank_crtc (struct timing_generator*) ;
 int dce110_timing_generator_v_unblank_crtc (struct timing_generator*) ;

__attribute__((used)) static void dce110_timing_generator_v_set_blank(struct timing_generator *tg,
  bool enable_blanking)
{
 if (enable_blanking)
  dce110_timing_generator_v_blank_crtc(tg);
 else
  dce110_timing_generator_v_unblank_crtc(tg);
}
