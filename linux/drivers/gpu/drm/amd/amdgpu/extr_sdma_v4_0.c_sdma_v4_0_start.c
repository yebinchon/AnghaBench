
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_8__ {struct amdgpu_ring* buffer_funcs_ring; } ;
struct TYPE_7__ {int num_instances; TYPE_2__* instance; scalar_t__ has_page_queue; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_4__ mman; TYPE_3__ sdma; TYPE_1__ firmware; } ;
struct TYPE_6__ {struct amdgpu_ring page; struct amdgpu_ring ring; } ;


 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 int HALT ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 scalar_t__ RREG32_SDMA (int,int ) ;
 int SDMA0_CNTL ;
 int SDMA0_F32_CNTL ;
 int UTC_L1_ENABLE ;
 int WREG32_SDMA (int,int ,scalar_t__) ;
 int amdgpu_ring_test_helper (struct amdgpu_ring*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int amdgpu_ttm_set_buffer_funcs_status (struct amdgpu_device*,int) ;
 int mmSDMA0_CNTL ;
 int mmSDMA0_F32_CNTL ;
 int mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL ;
 int sdma_v4_0_ctx_switch_enable (struct amdgpu_device*,int) ;
 int sdma_v4_0_enable (struct amdgpu_device*,int) ;
 int sdma_v4_0_gfx_resume (struct amdgpu_device*,int) ;
 int sdma_v4_0_load_microcode (struct amdgpu_device*) ;
 int sdma_v4_0_page_resume (struct amdgpu_device*,int) ;
 int sdma_v4_0_rlc_resume (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v4_0_start(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 int i, r = 0;

 if (amdgpu_sriov_vf(adev)) {
  sdma_v4_0_ctx_switch_enable(adev, 0);
  sdma_v4_0_enable(adev, 0);
 } else {

  if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {
   r = sdma_v4_0_load_microcode(adev);
   if (r)
    return r;
  }


  sdma_v4_0_enable(adev, 1);

  sdma_v4_0_ctx_switch_enable(adev, 1);
 }


 for (i = 0; i < adev->sdma.num_instances; i++) {
  uint32_t temp;

  WREG32_SDMA(i, mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL, 0);
  sdma_v4_0_gfx_resume(adev, i);
  if (adev->sdma.has_page_queue)
   sdma_v4_0_page_resume(adev, i);


  temp = RREG32_SDMA(i, mmSDMA0_CNTL);
  temp = REG_SET_FIELD(temp, SDMA0_CNTL, UTC_L1_ENABLE, 1);
  WREG32_SDMA(i, mmSDMA0_CNTL, temp);

  if (!amdgpu_sriov_vf(adev)) {

   temp = RREG32_SDMA(i, mmSDMA0_F32_CNTL);
   temp = REG_SET_FIELD(temp, SDMA0_F32_CNTL, HALT, 0);
   WREG32_SDMA(i, mmSDMA0_F32_CNTL, temp);
  }
 }

 if (amdgpu_sriov_vf(adev)) {
  sdma_v4_0_ctx_switch_enable(adev, 1);
  sdma_v4_0_enable(adev, 1);
 } else {
  r = sdma_v4_0_rlc_resume(adev);
  if (r)
   return r;
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  ring = &adev->sdma.instance[i].ring;

  r = amdgpu_ring_test_helper(ring);
  if (r)
   return r;

  if (adev->sdma.has_page_queue) {
   struct amdgpu_ring *page = &adev->sdma.instance[i].page;

   r = amdgpu_ring_test_helper(page);
   if (r)
    return r;

   if (adev->mman.buffer_funcs_ring == page)
    amdgpu_ttm_set_buffer_funcs_status(adev, 1);
  }

  if (adev->mman.buffer_funcs_ring == ring)
   amdgpu_ttm_set_buffer_funcs_status(adev, 1);
 }

 return r;
}
