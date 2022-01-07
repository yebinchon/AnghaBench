
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {int wptr; struct amdgpu_device* adev; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {struct amdgpu_ring* ring_enc; } ;


 int WREG32 (int ,int ) ;
 int lower_32_bits (int ) ;
 int mmUVD_RB_WPTR ;
 int mmUVD_RB_WPTR2 ;

__attribute__((used)) static void uvd_v6_0_enc_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring == &adev->uvd.inst->ring_enc[0])
  WREG32(mmUVD_RB_WPTR,
   lower_32_bits(ring->wptr));
 else
  WREG32(mmUVD_RB_WPTR2,
   lower_32_bits(ring->wptr));
}
