
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct amdgpu_ring {TYPE_1__* funcs; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ vmhub; } ;


 scalar_t__ AMDGPU_GFXHUB_0 ;
 int OSSSYS ;
 unsigned int SOC15_REG_OFFSET (int ,int ,int ) ;
 int amdgpu_ring_emit_wreg (struct amdgpu_ring*,unsigned int,unsigned int) ;
 int mmIH_VMID_0_LUT ;
 int mmIH_VMID_0_LUT_MM ;

__attribute__((used)) static void gmc_v10_0_emit_pasid_mapping(struct amdgpu_ring *ring, unsigned vmid,
      unsigned pasid)
{
 struct amdgpu_device *adev = ring->adev;
 uint32_t reg;

 if (ring->funcs->vmhub == AMDGPU_GFXHUB_0)
  reg = SOC15_REG_OFFSET(OSSSYS, 0, mmIH_VMID_0_LUT) + vmid;
 else
  reg = SOC15_REG_OFFSET(OSSSYS, 0, mmIH_VMID_0_LUT_MM) + vmid;

 amdgpu_ring_emit_wreg(ring, reg, pasid);
}
