
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int num_processor; scalar_t__* processor; scalar_t__ bcast_processor; } ;


 int lima_pp_soft_reset_async (scalar_t__) ;

__attribute__((used)) static void lima_pp_task_fini(struct lima_sched_pipe *pipe)
{
 if (pipe->bcast_processor)
  lima_pp_soft_reset_async(pipe->bcast_processor);
 else {
  int i;

  for (i = 0; i < pipe->num_processor; i++)
   lima_pp_soft_reset_async(pipe->processor[i]);
 }
}
