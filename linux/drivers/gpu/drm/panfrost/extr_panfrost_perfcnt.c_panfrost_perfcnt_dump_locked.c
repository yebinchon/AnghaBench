
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct panfrost_device {TYPE_1__* perfcnt; } ;
struct TYPE_5__ {int start; } ;
struct TYPE_6__ {TYPE_2__ node; } ;
struct TYPE_4__ {int dump_comp; TYPE_3__* bo; } ;


 int ETIMEDOUT ;
 int GPU_CMD ;
 int GPU_CMD_PERFCNT_SAMPLE ;
 int GPU_INT_CLEAR ;
 int GPU_IRQ_CLEAN_CACHES_COMPLETED ;
 int GPU_IRQ_PERFCNT_SAMPLE_COMPLETED ;
 int GPU_PERFCNT_BASE_HI ;
 int GPU_PERFCNT_BASE_LO ;
 int PAGE_SHIFT ;
 int gpu_write (struct panfrost_device*,int ,int) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int panfrost_perfcnt_dump_locked(struct panfrost_device *pfdev)
{
 u64 gpuva;
 int ret;

 reinit_completion(&pfdev->perfcnt->dump_comp);
 gpuva = pfdev->perfcnt->bo->node.start << PAGE_SHIFT;
 gpu_write(pfdev, GPU_PERFCNT_BASE_LO, gpuva);
 gpu_write(pfdev, GPU_PERFCNT_BASE_HI, gpuva >> 32);
 gpu_write(pfdev, GPU_INT_CLEAR,
    GPU_IRQ_CLEAN_CACHES_COMPLETED |
    GPU_IRQ_PERFCNT_SAMPLE_COMPLETED);
 gpu_write(pfdev, GPU_CMD, GPU_CMD_PERFCNT_SAMPLE);
 ret = wait_for_completion_interruptible_timeout(&pfdev->perfcnt->dump_comp,
       msecs_to_jiffies(1000));
 if (!ret)
  ret = -ETIMEDOUT;
 else if (ret > 0)
  ret = 0;

 return ret;
}
