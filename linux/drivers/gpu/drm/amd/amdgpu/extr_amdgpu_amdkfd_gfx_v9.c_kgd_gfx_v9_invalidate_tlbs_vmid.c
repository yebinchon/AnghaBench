
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int num_vmhubs; } ;


 int amdgpu_amdkfd_is_kfd_vmid (struct amdgpu_device*,int ) ;
 int amdgpu_gmc_flush_gpu_tlb (struct amdgpu_device*,int ,int,int ) ;
 int pr_err (char*,int ) ;

int kgd_gfx_v9_invalidate_tlbs_vmid(struct kgd_dev *kgd, uint16_t vmid)
{
 struct amdgpu_device *adev = (struct amdgpu_device *) kgd;
 int i;

 if (!amdgpu_amdkfd_is_kfd_vmid(adev, vmid)) {
  pr_err("non kfd vmid %d\n", vmid);
  return 0;
 }
 for (i = 0; i < adev->num_vmhubs; i++)
  amdgpu_gmc_flush_gpu_tlb(adev, vmid, i, 0);

 return 0;
}
