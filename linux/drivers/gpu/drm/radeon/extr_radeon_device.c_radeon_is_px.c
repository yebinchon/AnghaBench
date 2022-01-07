
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int flags; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int RADEON_IS_PX ;

bool radeon_is_px(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;

 if (rdev->flags & RADEON_IS_PX)
  return 1;
 return 0;
}
