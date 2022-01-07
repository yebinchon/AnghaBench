
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int base; } ;


 int drm_sched_fini (int *) ;

void lima_sched_pipe_fini(struct lima_sched_pipe *pipe)
{
 drm_sched_fini(&pipe->base);
}
