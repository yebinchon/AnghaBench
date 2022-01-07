
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int MSEC_PER_SEC ;
 int drm_mode_vrefresh (struct drm_display_mode const*) ;
 int msleep (int) ;

__attribute__((used)) static void dw_mipi_dsi_wait_for_two_frames(const struct drm_display_mode *mode)
{
 int refresh, two_frames;

 refresh = drm_mode_vrefresh(mode);
 two_frames = DIV_ROUND_UP(MSEC_PER_SEC, refresh) * 2;
 msleep(two_frames);
}
