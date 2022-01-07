
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vcn_ring6_7; int vcn_ring4_5; int vcn_ring2_3; int vcn_ring0_1; } ;
struct TYPE_4__ {int vce_ring6_7; int vce_ring4_5; int vce_ring2_3; int vce_ring0_1; int uvd_ring6_7; int uvd_ring4_5; int uvd_ring2_3; int uvd_ring0_1; } ;
struct TYPE_6__ {int max_assignment; int sdma_doorbell_range; int last_non_cp; int first_non_cp; TYPE_2__ vcn; TYPE_1__ uvd_vce; int ih; int * sdma_engine; int gfx_ring0; int userqueue_end; int userqueue_start; int mec_ring7; int mec_ring6; int mec_ring5; int mec_ring4; int mec_ring3; int mec_ring2; int mec_ring1; int mec_ring0; int kiq; } ;
struct amdgpu_device {TYPE_3__ doorbell_index; } ;


 int AMDGPU_VEGA20_DOORBELL64_FIRST_NON_CP ;
 int AMDGPU_VEGA20_DOORBELL64_LAST_NON_CP ;
 int AMDGPU_VEGA20_DOORBELL64_UVD_RING0_1 ;
 int AMDGPU_VEGA20_DOORBELL64_UVD_RING2_3 ;
 int AMDGPU_VEGA20_DOORBELL64_UVD_RING4_5 ;
 int AMDGPU_VEGA20_DOORBELL64_UVD_RING6_7 ;
 int AMDGPU_VEGA20_DOORBELL64_VCE_RING0_1 ;
 int AMDGPU_VEGA20_DOORBELL64_VCE_RING2_3 ;
 int AMDGPU_VEGA20_DOORBELL64_VCE_RING4_5 ;
 int AMDGPU_VEGA20_DOORBELL64_VCE_RING6_7 ;
 int AMDGPU_VEGA20_DOORBELL64_VCN0_1 ;
 int AMDGPU_VEGA20_DOORBELL64_VCN2_3 ;
 int AMDGPU_VEGA20_DOORBELL64_VCN4_5 ;
 int AMDGPU_VEGA20_DOORBELL64_VCN6_7 ;
 int AMDGPU_VEGA20_DOORBELL_GFX_RING0 ;
 int AMDGPU_VEGA20_DOORBELL_IH ;
 int AMDGPU_VEGA20_DOORBELL_KIQ ;
 int AMDGPU_VEGA20_DOORBELL_MAX_ASSIGNMENT ;
 int AMDGPU_VEGA20_DOORBELL_MEC_RING0 ;
 int AMDGPU_VEGA20_DOORBELL_MEC_RING1 ;
 int AMDGPU_VEGA20_DOORBELL_MEC_RING2 ;
 int AMDGPU_VEGA20_DOORBELL_MEC_RING3 ;
 int AMDGPU_VEGA20_DOORBELL_MEC_RING4 ;
 int AMDGPU_VEGA20_DOORBELL_MEC_RING5 ;
 int AMDGPU_VEGA20_DOORBELL_MEC_RING6 ;
 int AMDGPU_VEGA20_DOORBELL_MEC_RING7 ;
 int AMDGPU_VEGA20_DOORBELL_USERQUEUE_END ;
 int AMDGPU_VEGA20_DOORBELL_USERQUEUE_START ;
 int AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE0 ;
 int AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE1 ;
 int AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE2 ;
 int AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE3 ;
 int AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE4 ;
 int AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE5 ;
 int AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE6 ;
 int AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE7 ;

void vega20_doorbell_index_init(struct amdgpu_device *adev)
{
 adev->doorbell_index.kiq = AMDGPU_VEGA20_DOORBELL_KIQ;
 adev->doorbell_index.mec_ring0 = AMDGPU_VEGA20_DOORBELL_MEC_RING0;
 adev->doorbell_index.mec_ring1 = AMDGPU_VEGA20_DOORBELL_MEC_RING1;
 adev->doorbell_index.mec_ring2 = AMDGPU_VEGA20_DOORBELL_MEC_RING2;
 adev->doorbell_index.mec_ring3 = AMDGPU_VEGA20_DOORBELL_MEC_RING3;
 adev->doorbell_index.mec_ring4 = AMDGPU_VEGA20_DOORBELL_MEC_RING4;
 adev->doorbell_index.mec_ring5 = AMDGPU_VEGA20_DOORBELL_MEC_RING5;
 adev->doorbell_index.mec_ring6 = AMDGPU_VEGA20_DOORBELL_MEC_RING6;
 adev->doorbell_index.mec_ring7 = AMDGPU_VEGA20_DOORBELL_MEC_RING7;
 adev->doorbell_index.userqueue_start = AMDGPU_VEGA20_DOORBELL_USERQUEUE_START;
 adev->doorbell_index.userqueue_end = AMDGPU_VEGA20_DOORBELL_USERQUEUE_END;
 adev->doorbell_index.gfx_ring0 = AMDGPU_VEGA20_DOORBELL_GFX_RING0;
 adev->doorbell_index.sdma_engine[0] = AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE0;
 adev->doorbell_index.sdma_engine[1] = AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE1;
 adev->doorbell_index.sdma_engine[2] = AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE2;
 adev->doorbell_index.sdma_engine[3] = AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE3;
 adev->doorbell_index.sdma_engine[4] = AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE4;
 adev->doorbell_index.sdma_engine[5] = AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE5;
 adev->doorbell_index.sdma_engine[6] = AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE6;
 adev->doorbell_index.sdma_engine[7] = AMDGPU_VEGA20_DOORBELL_sDMA_ENGINE7;
 adev->doorbell_index.ih = AMDGPU_VEGA20_DOORBELL_IH;
 adev->doorbell_index.uvd_vce.uvd_ring0_1 = AMDGPU_VEGA20_DOORBELL64_UVD_RING0_1;
 adev->doorbell_index.uvd_vce.uvd_ring2_3 = AMDGPU_VEGA20_DOORBELL64_UVD_RING2_3;
 adev->doorbell_index.uvd_vce.uvd_ring4_5 = AMDGPU_VEGA20_DOORBELL64_UVD_RING4_5;
 adev->doorbell_index.uvd_vce.uvd_ring6_7 = AMDGPU_VEGA20_DOORBELL64_UVD_RING6_7;
 adev->doorbell_index.uvd_vce.vce_ring0_1 = AMDGPU_VEGA20_DOORBELL64_VCE_RING0_1;
 adev->doorbell_index.uvd_vce.vce_ring2_3 = AMDGPU_VEGA20_DOORBELL64_VCE_RING2_3;
 adev->doorbell_index.uvd_vce.vce_ring4_5 = AMDGPU_VEGA20_DOORBELL64_VCE_RING4_5;
 adev->doorbell_index.uvd_vce.vce_ring6_7 = AMDGPU_VEGA20_DOORBELL64_VCE_RING6_7;
 adev->doorbell_index.vcn.vcn_ring0_1 = AMDGPU_VEGA20_DOORBELL64_VCN0_1;
 adev->doorbell_index.vcn.vcn_ring2_3 = AMDGPU_VEGA20_DOORBELL64_VCN2_3;
 adev->doorbell_index.vcn.vcn_ring4_5 = AMDGPU_VEGA20_DOORBELL64_VCN4_5;
 adev->doorbell_index.vcn.vcn_ring6_7 = AMDGPU_VEGA20_DOORBELL64_VCN6_7;

 adev->doorbell_index.first_non_cp = AMDGPU_VEGA20_DOORBELL64_FIRST_NON_CP;
 adev->doorbell_index.last_non_cp = AMDGPU_VEGA20_DOORBELL64_LAST_NON_CP;

 adev->doorbell_index.max_assignment = AMDGPU_VEGA20_DOORBELL_MAX_ASSIGNMENT << 1;
 adev->doorbell_index.sdma_doorbell_range = 20;
}
