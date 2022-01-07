
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* agp; } ;
struct TYPE_2__ {scalar_t__ acquired; int bridge; } ;


 int EINVAL ;
 int agp_backend_release (int ) ;

int drm_agp_release(struct drm_device *dev)
{
 if (!dev->agp || !dev->agp->acquired)
  return -EINVAL;
 agp_backend_release(dev->agp->bridge);
 dev->agp->acquired = 0;
 return 0;
}
