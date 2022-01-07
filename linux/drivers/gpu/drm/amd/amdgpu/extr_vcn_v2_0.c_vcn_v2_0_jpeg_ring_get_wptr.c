
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_ring {size_t wptr_offs; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int RREG32_SOC15 (int ,int ,int ) ;
 int UVD ;
 int mmUVD_JRBC_RB_WPTR ;

__attribute__((used)) static uint64_t vcn_v2_0_jpeg_ring_get_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->use_doorbell)
  return adev->wb.wb[ring->wptr_offs];
 else
  return RREG32_SOC15(UVD, 0, mmUVD_JRBC_RB_WPTR);
}
