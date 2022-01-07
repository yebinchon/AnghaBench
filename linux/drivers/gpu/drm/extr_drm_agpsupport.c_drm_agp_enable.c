
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* agp; } ;
struct drm_agp_mode {int mode; } ;
struct TYPE_2__ {int enabled; int bridge; int mode; int acquired; } ;


 int EINVAL ;
 int agp_enable (int ,int ) ;

int drm_agp_enable(struct drm_device *dev, struct drm_agp_mode mode)
{
 if (!dev->agp || !dev->agp->acquired)
  return -EINVAL;

 dev->agp->mode = mode.mode;
 agp_enable(dev->agp->bridge, mode.mode);
 dev->agp->enabled = 1;
 return 0;
}
