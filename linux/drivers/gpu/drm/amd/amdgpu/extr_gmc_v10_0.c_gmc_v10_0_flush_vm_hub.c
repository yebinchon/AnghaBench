
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct amdgpu_vmhub {scalar_t__ vm_inv_eng0_ack; scalar_t__ vm_inv_eng0_req; } ;
struct amdgpu_device {unsigned int usec_timeout; struct amdgpu_vmhub* vmhub; } ;


 unsigned int AMDGPU_GFXHUB_0 ;
 int DRM_ERROR (char*) ;
 int RREG32_NO_KIQ (scalar_t__) ;
 int WREG32_NO_KIQ (scalar_t__,int) ;
 int gmc_v10_0_get_invalidate_req (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void gmc_v10_0_flush_vm_hub(struct amdgpu_device *adev, uint32_t vmid,
       unsigned int vmhub, uint32_t flush_type)
{
 struct amdgpu_vmhub *hub = &adev->vmhub[vmhub];
 u32 tmp = gmc_v10_0_get_invalidate_req(vmid, flush_type);

 const unsigned eng = 17;
 unsigned int i;

 WREG32_NO_KIQ(hub->vm_inv_eng0_req + eng, tmp);





 if (vmhub == AMDGPU_GFXHUB_0)
  RREG32_NO_KIQ(hub->vm_inv_eng0_req + eng);


 for (i = 0; i < adev->usec_timeout; i++) {
  tmp = RREG32_NO_KIQ(hub->vm_inv_eng0_ack + eng);
  tmp &= 1 << vmid;
  if (tmp)
   break;

  udelay(1);
 }

 if (i < adev->usec_timeout)
  return;

 DRM_ERROR("Timeout waiting for VM flush ACK!\n");
}
