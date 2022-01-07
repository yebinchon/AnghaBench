
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_info {int height_mm; int width_mm; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int TPO_PANEL_HEIGHT ;
 int TPO_PANEL_WIDTH ;

__attribute__((used)) static int tpo_vid_get_panel_info(struct drm_device *dev,
    int pipe,
    struct panel_info *pi)
{
 if (!dev || !pi)
  return -EINVAL;

 pi->width_mm = TPO_PANEL_WIDTH;
 pi->height_mm = TPO_PANEL_HEIGHT;

 return 0;
}
