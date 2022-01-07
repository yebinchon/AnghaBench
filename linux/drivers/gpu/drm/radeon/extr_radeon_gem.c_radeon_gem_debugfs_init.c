
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int radeon_debugfs_add_files (struct radeon_device*,int ,int) ;
 int radeon_debugfs_gem_list ;

int radeon_gem_debugfs_init(struct radeon_device *rdev)
{



 return 0;
}
