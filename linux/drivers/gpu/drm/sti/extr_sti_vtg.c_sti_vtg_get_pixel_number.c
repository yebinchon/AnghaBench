
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_display_mode {scalar_t__ hsync_start; scalar_t__ htotal; } ;



u32 sti_vtg_get_pixel_number(struct drm_display_mode mode, int x)
{
 return mode.htotal - mode.hsync_start + x;
}
