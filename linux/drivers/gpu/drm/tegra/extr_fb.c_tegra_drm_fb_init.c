
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_drm {int fbdev; } ;
struct TYPE_2__ {int num_connector; int num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; struct tegra_drm* dev_private; } ;


 int tegra_fbdev_init (int ,int,int ,int ) ;

int tegra_drm_fb_init(struct drm_device *drm)
{
 return 0;
}
