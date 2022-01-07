
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int dummy; } ;


 int amdgpu_ring_emit_wreg (struct amdgpu_ring*,unsigned int,unsigned int) ;
 unsigned int mmIH_VMID_0_LUT ;

__attribute__((used)) static void gmc_v7_0_emit_pasid_mapping(struct amdgpu_ring *ring, unsigned vmid,
     unsigned pasid)
{
 amdgpu_ring_emit_wreg(ring, mmIH_VMID_0_LUT + vmid, pasid);
}
