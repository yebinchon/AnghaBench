
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dev; } ;


 int dev_warn (int ,char*) ;
 int r100_debugfs_mc_info_init (struct radeon_device*) ;

__attribute__((used)) static void r100_debugfs(struct radeon_device *rdev)
{
 int r;

 r = r100_debugfs_mc_info_init(rdev);
 if (r)
  dev_warn(rdev->dev, "Failed to create r100_mc debugfs file.\n");
}
