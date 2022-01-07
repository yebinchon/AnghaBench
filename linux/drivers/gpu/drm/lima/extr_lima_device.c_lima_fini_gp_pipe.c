
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int dummy; } ;
struct lima_device {struct lima_sched_pipe* pipe; } ;


 int lima_gp_pipe_fini (struct lima_device*) ;
 int lima_pipe_gp ;
 int lima_sched_pipe_fini (struct lima_sched_pipe*) ;

__attribute__((used)) static void lima_fini_gp_pipe(struct lima_device *dev)
{
 struct lima_sched_pipe *pipe = dev->pipe + lima_pipe_gp;

 lima_gp_pipe_fini(dev);
 lima_sched_pipe_fini(pipe);
}
