
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int WREG32 (int ,int) ;
 int mmVM_INVALIDATE_REQUEST ;

__attribute__((used)) static void gmc_v6_0_flush_gpu_tlb(struct amdgpu_device *adev, uint32_t vmid,
     uint32_t vmhub, uint32_t flush_type)
{
 WREG32(mmVM_INVALIDATE_REQUEST, 1 << vmid);
}
