
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_MODE_PANEL_ORIENTATION_UNKNOWN ;

int drm_get_panel_orientation_quirk(int width, int height)
{
 return DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
}
