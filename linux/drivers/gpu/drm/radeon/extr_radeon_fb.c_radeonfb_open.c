
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_fbdev {struct radeon_device* rdev; } ;
struct radeon_device {TYPE_1__* ddev; } ;
struct fb_info {struct radeon_fbdev* par; } ;
struct TYPE_2__ {int dev; } ;


 int EACCES ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int
radeonfb_open(struct fb_info *info, int user)
{
 struct radeon_fbdev *rfbdev = info->par;
 struct radeon_device *rdev = rfbdev->rdev;
 int ret = pm_runtime_get_sync(rdev->ddev->dev);
 if (ret < 0 && ret != -EACCES) {
  pm_runtime_mark_last_busy(rdev->ddev->dev);
  pm_runtime_put_autosuspend(rdev->ddev->dev);
  return ret;
 }
 return 0;
}
