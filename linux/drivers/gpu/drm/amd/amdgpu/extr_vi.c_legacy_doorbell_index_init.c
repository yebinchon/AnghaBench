
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_assignment; int ih; int * sdma_engine; int gfx_ring0; int mec_ring7; int mec_ring6; int mec_ring5; int mec_ring4; int mec_ring3; int mec_ring2; int mec_ring1; int mec_ring0; int kiq; } ;
struct amdgpu_device {TYPE_1__ doorbell_index; } ;


 int AMDGPU_DOORBELL_GFX_RING0 ;
 int AMDGPU_DOORBELL_IH ;
 int AMDGPU_DOORBELL_KIQ ;
 int AMDGPU_DOORBELL_MAX_ASSIGNMENT ;
 int AMDGPU_DOORBELL_MEC_RING0 ;
 int AMDGPU_DOORBELL_MEC_RING1 ;
 int AMDGPU_DOORBELL_MEC_RING2 ;
 int AMDGPU_DOORBELL_MEC_RING3 ;
 int AMDGPU_DOORBELL_MEC_RING4 ;
 int AMDGPU_DOORBELL_MEC_RING5 ;
 int AMDGPU_DOORBELL_MEC_RING6 ;
 int AMDGPU_DOORBELL_MEC_RING7 ;
 int AMDGPU_DOORBELL_sDMA_ENGINE0 ;
 int AMDGPU_DOORBELL_sDMA_ENGINE1 ;

void legacy_doorbell_index_init(struct amdgpu_device *adev)
{
 adev->doorbell_index.kiq = AMDGPU_DOORBELL_KIQ;
 adev->doorbell_index.mec_ring0 = AMDGPU_DOORBELL_MEC_RING0;
 adev->doorbell_index.mec_ring1 = AMDGPU_DOORBELL_MEC_RING1;
 adev->doorbell_index.mec_ring2 = AMDGPU_DOORBELL_MEC_RING2;
 adev->doorbell_index.mec_ring3 = AMDGPU_DOORBELL_MEC_RING3;
 adev->doorbell_index.mec_ring4 = AMDGPU_DOORBELL_MEC_RING4;
 adev->doorbell_index.mec_ring5 = AMDGPU_DOORBELL_MEC_RING5;
 adev->doorbell_index.mec_ring6 = AMDGPU_DOORBELL_MEC_RING6;
 adev->doorbell_index.mec_ring7 = AMDGPU_DOORBELL_MEC_RING7;
 adev->doorbell_index.gfx_ring0 = AMDGPU_DOORBELL_GFX_RING0;
 adev->doorbell_index.sdma_engine[0] = AMDGPU_DOORBELL_sDMA_ENGINE0;
 adev->doorbell_index.sdma_engine[1] = AMDGPU_DOORBELL_sDMA_ENGINE1;
 adev->doorbell_index.ih = AMDGPU_DOORBELL_IH;
 adev->doorbell_index.max_assignment = AMDGPU_DOORBELL_MAX_ASSIGNMENT;
}
