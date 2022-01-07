
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* cpu_addr; int * vcpu_bo; } ;
struct radeon_device {TYPE_2__* uvd_fw; TYPE_1__ uvd; } ;
struct TYPE_4__ {unsigned int size; int data; } ;


 int EINVAL ;
 int memcpy (void*,int ,unsigned int) ;
 int memset (void*,int ,unsigned int) ;
 unsigned int radeon_bo_size (int *) ;

int radeon_uvd_resume(struct radeon_device *rdev)
{
 unsigned size;
 void *ptr;

 if (rdev->uvd.vcpu_bo == ((void*)0))
  return -EINVAL;

 memcpy(rdev->uvd.cpu_addr, rdev->uvd_fw->data, rdev->uvd_fw->size);

 size = radeon_bo_size(rdev->uvd.vcpu_bo);
 size -= rdev->uvd_fw->size;

 ptr = rdev->uvd.cpu_addr;
 ptr += rdev->uvd_fw->size;

 memset(ptr, 0, size);

 return 0;
}
