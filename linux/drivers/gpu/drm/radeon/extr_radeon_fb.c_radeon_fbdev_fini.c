
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rfbdev; } ;
struct radeon_device {TYPE_1__ mode_info; int ddev; } ;


 int kfree (int *) ;
 int radeon_fbdev_destroy (int ,int *) ;

void radeon_fbdev_fini(struct radeon_device *rdev)
{
 if (!rdev->mode_info.rfbdev)
  return;

 radeon_fbdev_destroy(rdev->ddev, rdev->mode_info.rfbdev);
 kfree(rdev->mode_info.rfbdev);
 rdev->mode_info.rfbdev = ((void*)0);
}
