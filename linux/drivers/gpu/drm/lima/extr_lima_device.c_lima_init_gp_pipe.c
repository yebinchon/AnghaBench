
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int num_processor; scalar_t__* processor; int num_mmu; scalar_t__* mmu; int num_l2_cache; scalar_t__* l2_cache; } ;
struct lima_device {scalar_t__ ip; struct lima_sched_pipe* pipe; } ;


 int lima_gp_pipe_init (struct lima_device*) ;
 scalar_t__ lima_ip_gp ;
 scalar_t__ lima_ip_gpmmu ;
 scalar_t__ lima_ip_l2_cache0 ;
 int lima_pipe_gp ;
 int lima_sched_pipe_fini (struct lima_sched_pipe*) ;
 int lima_sched_pipe_init (struct lima_sched_pipe*,char*) ;

__attribute__((used)) static int lima_init_gp_pipe(struct lima_device *dev)
{
 struct lima_sched_pipe *pipe = dev->pipe + lima_pipe_gp;
 int err;

 err = lima_sched_pipe_init(pipe, "gp");
 if (err)
  return err;

 pipe->l2_cache[pipe->num_l2_cache++] = dev->ip + lima_ip_l2_cache0;
 pipe->mmu[pipe->num_mmu++] = dev->ip + lima_ip_gpmmu;
 pipe->processor[pipe->num_processor++] = dev->ip + lima_ip_gp;

 err = lima_gp_pipe_init(dev);
 if (err) {
  lima_sched_pipe_fini(pipe);
  return err;
 }

 return 0;
}
