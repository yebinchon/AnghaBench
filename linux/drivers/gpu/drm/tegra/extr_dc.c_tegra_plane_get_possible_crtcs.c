
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;



__attribute__((used)) static unsigned long tegra_plane_get_possible_crtcs(struct drm_device *drm)
{
 return 1 << drm->mode_config.num_crtc;
}
