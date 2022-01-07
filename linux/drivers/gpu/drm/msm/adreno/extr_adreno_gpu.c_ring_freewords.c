
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_ringbuffer {int next; int start; int gpu; } ;
struct adreno_gpu {int dummy; } ;


 int MSM_GPU_RINGBUFFER_SZ ;
 int get_rptr (struct adreno_gpu*,struct msm_ringbuffer*) ;
 struct adreno_gpu* to_adreno_gpu (int ) ;

__attribute__((used)) static uint32_t ring_freewords(struct msm_ringbuffer *ring)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(ring->gpu);
 uint32_t size = MSM_GPU_RINGBUFFER_SZ >> 2;

 uint32_t wptr = ring->next - ring->start;
 uint32_t rptr = get_rptr(adreno_gpu, ring);
 return (rptr + (size - 1) - wptr) % size;
}
