
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct msm_ringbuffer {int id; } ;
struct msm_gpu {int name; } ;
struct adreno_gpu {int dummy; } ;


 int DRM_ERROR (char*,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ get_rptr (struct adreno_gpu*,struct msm_ringbuffer*) ;
 scalar_t__ get_wptr (struct msm_ringbuffer*) ;
 int spin_until (int) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

bool adreno_idle(struct msm_gpu *gpu, struct msm_ringbuffer *ring)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 uint32_t wptr = get_wptr(ring);


 if (!spin_until(get_rptr(adreno_gpu, ring) == wptr))
  return 1;


 DRM_ERROR("%s: timeout waiting to drain ringbuffer %d rptr/wptr = %X/%X\n",
  gpu->name, ring->id, get_rptr(adreno_gpu, ring), wptr);

 return 0;
}
