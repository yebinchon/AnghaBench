
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct v9_sdma_mqd {int sdma_queue_id; int sdma_engine_id; } ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int) ;
 int SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int get_sdma_base_addr (struct amdgpu_device*,int ,int ) ;
 struct v9_sdma_mqd* get_sdma_mqd (void*) ;
 int mmSDMA0_RLC0_RB_CNTL ;

__attribute__((used)) static bool kgd_hqd_sdma_is_occupied(struct kgd_dev *kgd, void *mqd)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 struct v9_sdma_mqd *m;
 uint32_t sdma_base_addr;
 uint32_t sdma_rlc_rb_cntl;

 m = get_sdma_mqd(mqd);
 sdma_base_addr = get_sdma_base_addr(adev, m->sdma_engine_id,
         m->sdma_queue_id);

 sdma_rlc_rb_cntl = RREG32(sdma_base_addr + mmSDMA0_RLC0_RB_CNTL);

 if (sdma_rlc_rb_cntl & SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK)
  return 1;

 return 0;
}
