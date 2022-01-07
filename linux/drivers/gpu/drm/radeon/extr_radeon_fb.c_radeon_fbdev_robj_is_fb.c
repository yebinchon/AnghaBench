
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* rfbdev; } ;
struct radeon_device {TYPE_3__ mode_info; } ;
struct radeon_bo {int dummy; } ;
struct TYPE_4__ {int * obj; } ;
struct TYPE_5__ {TYPE_1__ fb; } ;


 struct radeon_bo* gem_to_radeon_bo (int ) ;

bool radeon_fbdev_robj_is_fb(struct radeon_device *rdev, struct radeon_bo *robj)
{
 if (!rdev->mode_info.rfbdev)
  return 0;

 if (robj == gem_to_radeon_bo(rdev->mode_info.rfbdev->fb.obj[0]))
  return 1;
 return 0;
}
