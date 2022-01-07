
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RADEON_GPU_PAGE_ALIGN (int) ;
 int radeon_vm_num_pdes (struct radeon_device*) ;

__attribute__((used)) static unsigned radeon_vm_directory_size(struct radeon_device *rdev)
{
 return RADEON_GPU_PAGE_ALIGN(radeon_vm_num_pdes(rdev) * 8);
}
