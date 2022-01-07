
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_panel {int mode; } ;


 scalar_t__ WARN_ON (int) ;
 unsigned int drm_mode_vrefresh (int ) ;
 int msleep (int) ;

__attribute__((used)) static void sharp_wait_frames(struct sharp_panel *sharp, unsigned int frames)
{
 unsigned int refresh = drm_mode_vrefresh(sharp->mode);

 if (WARN_ON(frames > refresh))
  return;

 msleep(1000 / (refresh / frames));
}
