
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* agp; int pdev; } ;
struct TYPE_2__ {int acquired; int bridge; } ;


 int EBUSY ;
 int ENODEV ;
 int agp_backend_acquire (int ) ;

int drm_agp_acquire(struct drm_device *dev)
{
 if (!dev->agp)
  return -ENODEV;
 if (dev->agp->acquired)
  return -EBUSY;
 dev->agp->bridge = agp_backend_acquire(dev->pdev);
 if (!dev->agp->bridge)
  return -ENODEV;
 dev->agp->acquired = 1;
 return 0;
}
