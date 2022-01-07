
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * vcpu_bo; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ vce; TYPE_1__* vce_fw; int dev; } ;
struct TYPE_3__ {int size; int data; } ;


 scalar_t__ CHIP_BONAIRE ;
 int EINVAL ;
 int dev_err (int ,char*,int) ;
 int memcpy (void*,int ,int ) ;
 int memset (void*,int ,int ) ;
 int radeon_bo_kmap (int *,void**) ;
 int radeon_bo_kunmap (int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_size (int *) ;
 int radeon_bo_unreserve (int *) ;
 int vce_v1_0_load_fw (struct radeon_device*,void*) ;

int radeon_vce_resume(struct radeon_device *rdev)
{
 void *cpu_addr;
 int r;

 if (rdev->vce.vcpu_bo == ((void*)0))
  return -EINVAL;

 r = radeon_bo_reserve(rdev->vce.vcpu_bo, 0);
 if (r) {
  dev_err(rdev->dev, "(%d) failed to reserve VCE bo\n", r);
  return r;
 }

 r = radeon_bo_kmap(rdev->vce.vcpu_bo, &cpu_addr);
 if (r) {
  radeon_bo_unreserve(rdev->vce.vcpu_bo);
  dev_err(rdev->dev, "(%d) VCE map failed\n", r);
  return r;
 }

 memset(cpu_addr, 0, radeon_bo_size(rdev->vce.vcpu_bo));
 if (rdev->family < CHIP_BONAIRE)
  r = vce_v1_0_load_fw(rdev, cpu_addr);
 else
  memcpy(cpu_addr, rdev->vce_fw->data, rdev->vce_fw->size);

 radeon_bo_kunmap(rdev->vce.vcpu_bo);

 radeon_bo_unreserve(rdev->vce.vcpu_bo);

 return r;
}
