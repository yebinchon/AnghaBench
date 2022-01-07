
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_sched_pipe {int task; } ;
struct lima_ip {struct lima_device* dev; } ;
struct lima_device {struct lima_sched_pipe* pipe; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LIMA_PP_INT_STATUS ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int lima_pipe_pp ;
 int lima_pp_handle_irq (struct lima_ip*,int ) ;
 int lima_sched_pipe_task_done (struct lima_sched_pipe*) ;
 int pp_read (int ) ;

__attribute__((used)) static irqreturn_t lima_pp_irq_handler(int irq, void *data)
{
 struct lima_ip *ip = data;
 struct lima_device *dev = ip->dev;
 struct lima_sched_pipe *pipe = dev->pipe + lima_pipe_pp;
 u32 state = pp_read(LIMA_PP_INT_STATUS);


 if (!state)
  return IRQ_NONE;

 lima_pp_handle_irq(ip, state);

 if (atomic_dec_and_test(&pipe->task))
  lima_sched_pipe_task_done(pipe);

 return IRQ_HANDLED;
}
