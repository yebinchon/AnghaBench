
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_ringbuffer {int next; int cur; } ;
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;


 int REG_ADRENO_CP_RB_WPTR ;
 int adreno_gpu_write (struct adreno_gpu*,int ,int ) ;
 int get_wptr (struct msm_ringbuffer*) ;
 int mb () ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

void adreno_flush(struct msm_gpu *gpu, struct msm_ringbuffer *ring)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 uint32_t wptr;


 ring->cur = ring->next;






 wptr = get_wptr(ring);


 mb();

 adreno_gpu_write(adreno_gpu, REG_ADRENO_CP_RB_WPTR, wptr);
}
