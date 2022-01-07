
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lima_sched_pipe {int done; int task; struct lima_ip** processor; TYPE_1__* current_task; } ;
struct lima_ip {struct lima_device* dev; } ;
struct lima_device {struct lima_sched_pipe* pipe; } ;
struct drm_lima_m450_pp_frame {int num_pp; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct drm_lima_m450_pp_frame* frame; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LIMA_PP_INT_STATUS ;
 int LIMA_PP_STATUS ;
 int LIMA_PP_STATUS_RENDERING_ACTIVE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int lima_pipe_pp ;
 int lima_pp_handle_irq (struct lima_ip*,int) ;
 int lima_sched_pipe_task_done (struct lima_sched_pipe*) ;
 int pp_read (int ) ;

__attribute__((used)) static irqreturn_t lima_pp_bcast_irq_handler(int irq, void *data)
{
 int i;
 irqreturn_t ret = IRQ_NONE;
 struct lima_ip *pp_bcast = data;
 struct lima_device *dev = pp_bcast->dev;
 struct lima_sched_pipe *pipe = dev->pipe + lima_pipe_pp;
 struct drm_lima_m450_pp_frame *frame;


 if (!pipe->current_task)
  return IRQ_NONE;

 frame = pipe->current_task->frame;

 for (i = 0; i < frame->num_pp; i++) {
  struct lima_ip *ip = pipe->processor[i];
  u32 status, state;

  if (pipe->done & (1 << i))
   continue;




  status = pp_read(LIMA_PP_STATUS);
  state = pp_read(LIMA_PP_INT_STATUS);

  if (state) {
   lima_pp_handle_irq(ip, state);
   ret = IRQ_HANDLED;
  } else {
   if (status & LIMA_PP_STATUS_RENDERING_ACTIVE)
    continue;
  }

  pipe->done |= (1 << i);
  if (atomic_dec_and_test(&pipe->task))
   lima_sched_pipe_task_done(pipe);
 }

 return ret;
}
