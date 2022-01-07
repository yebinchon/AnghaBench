
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int radeon_debugfs_add_files (struct radeon_device*,int ,int) ;
 int rv370_pcie_gart_info_list ;

__attribute__((used)) static int rv370_debugfs_pcie_gart_info_init(struct radeon_device *rdev)
{



 return 0;

}
