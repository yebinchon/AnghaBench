
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int ready; } ;
struct amdgpu_ring {TYPE_4__ sched; } ;
struct TYPE_7__ {struct amdgpu_ring* buffer_funcs_ring; } ;
struct TYPE_6__ {int num_instances; TYPE_1__* instance; } ;
struct amdgpu_device {TYPE_3__ mman; TYPE_2__ sdma; } ;
struct TYPE_5__ {struct amdgpu_ring page; } ;


 int AMDGPU_MAX_SDMA_INSTANCES ;
 int IB_ENABLE ;
 int RB_ENABLE ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int RREG32_SDMA (int,int ) ;
 int SDMA0_PAGE_IB_CNTL ;
 int SDMA0_PAGE_RB_CNTL ;
 int WREG32_SDMA (int,int ,int ) ;
 int amdgpu_ttm_set_buffer_funcs_status (struct amdgpu_device*,int) ;
 int mmSDMA0_PAGE_IB_CNTL ;
 int mmSDMA0_PAGE_RB_CNTL ;

__attribute__((used)) static void sdma_v4_0_page_stop(struct amdgpu_device *adev)
{
 struct amdgpu_ring *sdma[AMDGPU_MAX_SDMA_INSTANCES];
 u32 rb_cntl, ib_cntl;
 int i;
 bool unset = 0;

 for (i = 0; i < adev->sdma.num_instances; i++) {
  sdma[i] = &adev->sdma.instance[i].page;

  if ((adev->mman.buffer_funcs_ring == sdma[i]) &&
   (unset == 0)) {
   amdgpu_ttm_set_buffer_funcs_status(adev, 0);
   unset = 1;
  }

  rb_cntl = RREG32_SDMA(i, mmSDMA0_PAGE_RB_CNTL);
  rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_PAGE_RB_CNTL,
     RB_ENABLE, 0);
  WREG32_SDMA(i, mmSDMA0_PAGE_RB_CNTL, rb_cntl);
  ib_cntl = RREG32_SDMA(i, mmSDMA0_PAGE_IB_CNTL);
  ib_cntl = REG_SET_FIELD(ib_cntl, SDMA0_PAGE_IB_CNTL,
     IB_ENABLE, 0);
  WREG32_SDMA(i, mmSDMA0_PAGE_IB_CNTL, ib_cntl);

  sdma[i]->sched.ready = 0;
 }
}
