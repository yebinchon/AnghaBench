
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int amdgpu_amdkfd_is_kfd_vmid (struct amdgpu_device*,int) ;
 int mmVM_INVALIDATE_REQUEST ;
 int mmVM_INVALIDATE_RESPONSE ;
 int pr_err (char*,int) ;

__attribute__((used)) static int invalidate_tlbs_vmid(struct kgd_dev *kgd, uint16_t vmid)
{
 struct amdgpu_device *adev = (struct amdgpu_device *) kgd;

 if (!amdgpu_amdkfd_is_kfd_vmid(adev, vmid)) {
  pr_err("non kfd vmid %d\n", vmid);
  return -EINVAL;
 }

 WREG32(mmVM_INVALIDATE_REQUEST, 1 << vmid);
 RREG32(mmVM_INVALIDATE_RESPONSE);
 return 0;
}
