
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_ring {size_t me; struct amdgpu_device* adev; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {struct amdgpu_ring* ring_enc; } ;


 int RREG32_SOC15 (int ,size_t,int ) ;
 int UVD ;
 int mmUVD_RB_RPTR ;
 int mmUVD_RB_RPTR2 ;

__attribute__((used)) static uint64_t uvd_v7_0_enc_ring_get_rptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring == &adev->uvd.inst[ring->me].ring_enc[0])
  return RREG32_SOC15(UVD, ring->me, mmUVD_RB_RPTR);
 else
  return RREG32_SOC15(UVD, ring->me, mmUVD_RB_RPTR2);
}
