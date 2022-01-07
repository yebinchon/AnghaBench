
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_ringbuffer {int seqno; TYPE_2__* memptrs; } ;
struct msm_gpu {int nr_rings; struct msm_ringbuffer** rb; } ;
struct TYPE_4__ {int patchid; int minor; int major; int core; } ;
struct adreno_gpu {TYPE_1__ rev; TYPE_3__* info; } ;
struct TYPE_6__ {int revn; } ;
struct TYPE_5__ {int fence; } ;


 int get_rptr (struct adreno_gpu*,struct msm_ringbuffer*) ;
 int get_wptr (struct msm_ringbuffer*) ;
 int printk (char*,int,...) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

void adreno_dump_info(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 int i;

 printk("revision: %d (%d.%d.%d.%d)\n",
   adreno_gpu->info->revn, adreno_gpu->rev.core,
   adreno_gpu->rev.major, adreno_gpu->rev.minor,
   adreno_gpu->rev.patchid);

 for (i = 0; i < gpu->nr_rings; i++) {
  struct msm_ringbuffer *ring = gpu->rb[i];

  printk("rb %d: fence:    %d/%d\n", i,
   ring->memptrs->fence,
   ring->seqno);

  printk("rptr:     %d\n", get_rptr(adreno_gpu, ring));
  printk("rb wptr:  %d\n", get_wptr(ring));
 }
}
