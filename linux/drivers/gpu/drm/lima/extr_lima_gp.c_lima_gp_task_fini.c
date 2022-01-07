
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int * processor; } ;


 int lima_gp_soft_reset_async (int ) ;

__attribute__((used)) static void lima_gp_task_fini(struct lima_sched_pipe *pipe)
{
 lima_gp_soft_reset_async(pipe->processor[0]);
}
