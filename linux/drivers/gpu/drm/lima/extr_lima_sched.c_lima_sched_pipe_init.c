
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int base; int error_work; int fence_lock; int fence_context; } ;


 int INIT_WORK (int *,int ) ;
 int dma_fence_context_alloc (int) ;
 int drm_sched_init (int *,int *,int,int ,int ,char const*) ;
 int lima_sched_error_work ;
 int lima_sched_ops ;
 int lima_sched_timeout_ms ;
 int msecs_to_jiffies (unsigned int) ;
 int spin_lock_init (int *) ;

int lima_sched_pipe_init(struct lima_sched_pipe *pipe, const char *name)
{
 unsigned int timeout = lima_sched_timeout_ms > 0 ?
          lima_sched_timeout_ms : 500;

 pipe->fence_context = dma_fence_context_alloc(1);
 spin_lock_init(&pipe->fence_lock);

 INIT_WORK(&pipe->error_work, lima_sched_error_work);

 return drm_sched_init(&pipe->base, &lima_sched_ops, 1, 0,
         msecs_to_jiffies(timeout), name);
}
