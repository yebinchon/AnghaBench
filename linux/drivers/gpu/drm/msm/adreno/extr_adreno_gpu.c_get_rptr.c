
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_ringbuffer {TYPE_1__* memptrs; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_2__ {int rptr; } ;


 int REG_ADRENO_CP_RB_RPTR ;
 int adreno_gpu_read (struct adreno_gpu*,int ) ;
 scalar_t__ adreno_is_a430 (struct adreno_gpu*) ;

__attribute__((used)) static uint32_t get_rptr(struct adreno_gpu *adreno_gpu,
  struct msm_ringbuffer *ring)
{
 if (adreno_is_a430(adreno_gpu))
  return ring->memptrs->rptr = adreno_gpu_read(
   adreno_gpu, REG_ADRENO_CP_RB_RPTR);
 else
  return ring->memptrs->rptr;
}
