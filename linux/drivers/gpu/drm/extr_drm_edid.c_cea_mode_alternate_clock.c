
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {unsigned int clock; int vrefresh; int vdisplay; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;

__attribute__((used)) static unsigned int
cea_mode_alternate_clock(const struct drm_display_mode *cea_mode)
{
 unsigned int clock = cea_mode->clock;

 if (cea_mode->vrefresh % 6 != 0)
  return clock;






 if (cea_mode->vdisplay == 240 || cea_mode->vdisplay == 480)
  clock = DIV_ROUND_CLOSEST(clock * 1001, 1000);
 else
  clock = DIV_ROUND_CLOSEST(clock * 1000, 1001);

 return clock;
}
