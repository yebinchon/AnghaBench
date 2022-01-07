
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int WREG32 (int ,int ) ;
 int lock_srbm (struct kgd_dev*,int ,int ,int ,int ) ;
 int mmSH_HIDDEN_PRIVATE_BASE_VMID ;
 int unlock_srbm (struct kgd_dev*) ;

__attribute__((used)) static void set_scratch_backing_va(struct kgd_dev *kgd,
     uint64_t va, uint32_t vmid)
{
 struct amdgpu_device *adev = (struct amdgpu_device *) kgd;

 lock_srbm(kgd, 0, 0, 0, vmid);
 WREG32(mmSH_HIDDEN_PRIVATE_BASE_VMID, va);
 unlock_srbm(kgd);
}
