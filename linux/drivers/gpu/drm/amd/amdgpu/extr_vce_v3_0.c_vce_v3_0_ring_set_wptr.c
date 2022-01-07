
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int me; int wptr; struct amdgpu_device* adev; } ;
struct TYPE_2__ {scalar_t__ harvest_config; } ;
struct amdgpu_device {int grbm_idx_mutex; TYPE_1__ vce; } ;


 scalar_t__ AMDGPU_VCE_HARVEST_VCE0 ;
 scalar_t__ AMDGPU_VCE_HARVEST_VCE1 ;
 int GET_VCE_INSTANCE (int) ;
 int WREG32 (int ,int ) ;
 int lower_32_bits (int ) ;
 int mmGRBM_GFX_INDEX ;
 int mmGRBM_GFX_INDEX_DEFAULT ;
 int mmVCE_RB_WPTR ;
 int mmVCE_RB_WPTR2 ;
 int mmVCE_RB_WPTR3 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void vce_v3_0_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 mutex_lock(&adev->grbm_idx_mutex);
 if (adev->vce.harvest_config == 0 ||
  adev->vce.harvest_config == AMDGPU_VCE_HARVEST_VCE1)
  WREG32(mmGRBM_GFX_INDEX, GET_VCE_INSTANCE(0));
 else if (adev->vce.harvest_config == AMDGPU_VCE_HARVEST_VCE0)
  WREG32(mmGRBM_GFX_INDEX, GET_VCE_INSTANCE(1));

 if (ring->me == 0)
  WREG32(mmVCE_RB_WPTR, lower_32_bits(ring->wptr));
 else if (ring->me == 1)
  WREG32(mmVCE_RB_WPTR2, lower_32_bits(ring->wptr));
 else
  WREG32(mmVCE_RB_WPTR3, lower_32_bits(ring->wptr));

 WREG32(mmGRBM_GFX_INDEX, mmGRBM_GFX_INDEX_DEFAULT);
 mutex_unlock(&adev->grbm_idx_mutex);
}
