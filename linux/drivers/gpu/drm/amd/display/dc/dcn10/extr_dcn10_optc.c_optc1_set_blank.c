
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;


 int optc1_blank_crtc (struct timing_generator*) ;
 int optc1_unblank_crtc (struct timing_generator*) ;

void optc1_set_blank(struct timing_generator *optc,
  bool enable_blanking)
{
 if (enable_blanking)
  optc1_blank_crtc(optc);
 else
  optc1_unblank_crtc(optc);
}
