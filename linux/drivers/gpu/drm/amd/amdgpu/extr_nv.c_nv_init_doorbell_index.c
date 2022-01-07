
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vcn_ring6_7; int vcn_ring4_5; int vcn_ring2_3; int vcn_ring0_1; } ;
struct TYPE_4__ {int max_assignment; int sdma_doorbell_range; int last_non_cp; int first_non_cp; TYPE_1__ vcn; int ih; int * sdma_engine; int gfx_ring1; int gfx_ring0; int userqueue_end; int userqueue_start; int mec_ring7; int mec_ring6; int mec_ring5; int mec_ring4; int mec_ring3; int mec_ring2; int mec_ring1; int mec_ring0; int kiq; } ;
struct amdgpu_device {TYPE_2__ doorbell_index; } ;


 int AMDGPU_NAVI10_DOORBELL64_FIRST_NON_CP ;
 int AMDGPU_NAVI10_DOORBELL64_LAST_NON_CP ;
 int AMDGPU_NAVI10_DOORBELL64_VCN0_1 ;
 int AMDGPU_NAVI10_DOORBELL64_VCN2_3 ;
 int AMDGPU_NAVI10_DOORBELL64_VCN4_5 ;
 int AMDGPU_NAVI10_DOORBELL64_VCN6_7 ;
 int AMDGPU_NAVI10_DOORBELL_GFX_RING0 ;
 int AMDGPU_NAVI10_DOORBELL_GFX_RING1 ;
 int AMDGPU_NAVI10_DOORBELL_IH ;
 int AMDGPU_NAVI10_DOORBELL_KIQ ;
 int AMDGPU_NAVI10_DOORBELL_MAX_ASSIGNMENT ;
 int AMDGPU_NAVI10_DOORBELL_MEC_RING0 ;
 int AMDGPU_NAVI10_DOORBELL_MEC_RING1 ;
 int AMDGPU_NAVI10_DOORBELL_MEC_RING2 ;
 int AMDGPU_NAVI10_DOORBELL_MEC_RING3 ;
 int AMDGPU_NAVI10_DOORBELL_MEC_RING4 ;
 int AMDGPU_NAVI10_DOORBELL_MEC_RING5 ;
 int AMDGPU_NAVI10_DOORBELL_MEC_RING6 ;
 int AMDGPU_NAVI10_DOORBELL_MEC_RING7 ;
 int AMDGPU_NAVI10_DOORBELL_USERQUEUE_END ;
 int AMDGPU_NAVI10_DOORBELL_USERQUEUE_START ;
 int AMDGPU_NAVI10_DOORBELL_sDMA_ENGINE0 ;
 int AMDGPU_NAVI10_DOORBELL_sDMA_ENGINE1 ;

__attribute__((used)) static void nv_init_doorbell_index(struct amdgpu_device *adev)
{
 adev->doorbell_index.kiq = AMDGPU_NAVI10_DOORBELL_KIQ;
 adev->doorbell_index.mec_ring0 = AMDGPU_NAVI10_DOORBELL_MEC_RING0;
 adev->doorbell_index.mec_ring1 = AMDGPU_NAVI10_DOORBELL_MEC_RING1;
 adev->doorbell_index.mec_ring2 = AMDGPU_NAVI10_DOORBELL_MEC_RING2;
 adev->doorbell_index.mec_ring3 = AMDGPU_NAVI10_DOORBELL_MEC_RING3;
 adev->doorbell_index.mec_ring4 = AMDGPU_NAVI10_DOORBELL_MEC_RING4;
 adev->doorbell_index.mec_ring5 = AMDGPU_NAVI10_DOORBELL_MEC_RING5;
 adev->doorbell_index.mec_ring6 = AMDGPU_NAVI10_DOORBELL_MEC_RING6;
 adev->doorbell_index.mec_ring7 = AMDGPU_NAVI10_DOORBELL_MEC_RING7;
 adev->doorbell_index.userqueue_start = AMDGPU_NAVI10_DOORBELL_USERQUEUE_START;
 adev->doorbell_index.userqueue_end = AMDGPU_NAVI10_DOORBELL_USERQUEUE_END;
 adev->doorbell_index.gfx_ring0 = AMDGPU_NAVI10_DOORBELL_GFX_RING0;
 adev->doorbell_index.gfx_ring1 = AMDGPU_NAVI10_DOORBELL_GFX_RING1;
 adev->doorbell_index.sdma_engine[0] = AMDGPU_NAVI10_DOORBELL_sDMA_ENGINE0;
 adev->doorbell_index.sdma_engine[1] = AMDGPU_NAVI10_DOORBELL_sDMA_ENGINE1;
 adev->doorbell_index.ih = AMDGPU_NAVI10_DOORBELL_IH;
 adev->doorbell_index.vcn.vcn_ring0_1 = AMDGPU_NAVI10_DOORBELL64_VCN0_1;
 adev->doorbell_index.vcn.vcn_ring2_3 = AMDGPU_NAVI10_DOORBELL64_VCN2_3;
 adev->doorbell_index.vcn.vcn_ring4_5 = AMDGPU_NAVI10_DOORBELL64_VCN4_5;
 adev->doorbell_index.vcn.vcn_ring6_7 = AMDGPU_NAVI10_DOORBELL64_VCN6_7;
 adev->doorbell_index.first_non_cp = AMDGPU_NAVI10_DOORBELL64_FIRST_NON_CP;
 adev->doorbell_index.last_non_cp = AMDGPU_NAVI10_DOORBELL64_LAST_NON_CP;

 adev->doorbell_index.max_assignment = AMDGPU_NAVI10_DOORBELL_MAX_ASSIGNMENT << 1;
 adev->doorbell_index.sdma_doorbell_range = 20;
}
