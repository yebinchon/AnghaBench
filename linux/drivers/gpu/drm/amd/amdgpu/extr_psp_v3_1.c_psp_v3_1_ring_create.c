
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_ring {unsigned int ring_size; int ring_mem_mc_addr; } ;
struct psp_context {struct amdgpu_device* adev; struct psp_ring km_ring; } ;
struct amdgpu_device {int dummy; } ;
typedef enum psp_ring_type { ____Placeholder_psp_ring_type } psp_ring_type ;


 int DRM_ERROR (char*) ;
 int MP0 ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,unsigned int) ;
 unsigned int lower_32_bits (int ) ;
 int mdelay (int) ;
 int mmMP0_SMN_C2PMSG_101 ;
 int mmMP0_SMN_C2PMSG_102 ;
 int mmMP0_SMN_C2PMSG_103 ;
 int mmMP0_SMN_C2PMSG_64 ;
 int mmMP0_SMN_C2PMSG_69 ;
 int mmMP0_SMN_C2PMSG_70 ;
 int mmMP0_SMN_C2PMSG_71 ;
 int psp_v3_1_reroute_ih (struct psp_context*) ;
 int psp_v3_1_ring_stop (struct psp_context*,int) ;
 scalar_t__ psp_v3_1_support_vmr_ring (struct psp_context*) ;
 int psp_wait_for (struct psp_context*,int ,int,int,int) ;
 unsigned int upper_32_bits (int ) ;

__attribute__((used)) static int psp_v3_1_ring_create(struct psp_context *psp,
    enum psp_ring_type ring_type)
{
 int ret = 0;
 unsigned int psp_ring_reg = 0;
 struct psp_ring *ring = &psp->km_ring;
 struct amdgpu_device *adev = psp->adev;

 psp_v3_1_reroute_ih(psp);

 if (psp_v3_1_support_vmr_ring(psp)) {
  ret = psp_v3_1_ring_stop(psp, ring_type);
  if (ret) {
   DRM_ERROR("psp_v3_1_ring_stop_sriov failed!\n");
   return ret;
  }


  psp_ring_reg = lower_32_bits(ring->ring_mem_mc_addr);
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_102, psp_ring_reg);

  psp_ring_reg = upper_32_bits(ring->ring_mem_mc_addr);
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_103, psp_ring_reg);


  psp_ring_reg = ring_type;
  psp_ring_reg = psp_ring_reg << 16;
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_101, psp_ring_reg);


  mdelay(20);


  ret = psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0,
     mmMP0_SMN_C2PMSG_101), 0x80000000,
     0x8000FFFF, 0);
 } else {


  psp_ring_reg = lower_32_bits(ring->ring_mem_mc_addr);
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_69, psp_ring_reg);

  psp_ring_reg = upper_32_bits(ring->ring_mem_mc_addr);
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_70, psp_ring_reg);

  psp_ring_reg = ring->ring_size;
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_71, psp_ring_reg);

  psp_ring_reg = ring_type;
  psp_ring_reg = psp_ring_reg << 16;
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_64, psp_ring_reg);


  mdelay(20);


  ret = psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0,
     mmMP0_SMN_C2PMSG_64), 0x80000000,
     0x8000FFFF, 0);

 }
 return ret;
}
