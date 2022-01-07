
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int wptr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int pg_flags; } ;


 int AMD_PG_SUPPORT_VCN_DPG ;
 int UVD ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int lower_32_bits (int ) ;
 int mmUVD_RBC_RB_WPTR ;
 int mmUVD_SCRATCH2 ;

__attribute__((used)) static void vcn_v1_0_dec_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG)
  WREG32_SOC15(UVD, 0, mmUVD_SCRATCH2,
   lower_32_bits(ring->wptr) | 0x80000000);

 WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_WPTR, lower_32_bits(ring->wptr));
}
