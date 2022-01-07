
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lima_sched_pipe {struct lima_ip** processor; TYPE_1__* current_task; } ;
struct TYPE_4__ {int async_reset; } ;
struct lima_ip {scalar_t__ id; TYPE_2__ data; struct lima_device* dev; } ;
struct lima_device {struct lima_sched_pipe* pipe; } ;
struct drm_lima_m450_pp_frame {int num_pp; } ;
struct TYPE_3__ {struct drm_lima_m450_pp_frame* frame; } ;


 scalar_t__ lima_ip_pp_bcast ;
 int lima_pipe_pp ;
 int lima_pp_soft_reset_async_wait_one (struct lima_ip*) ;

__attribute__((used)) static int lima_pp_soft_reset_async_wait(struct lima_ip *ip)
{
 int i, err = 0;

 if (!ip->data.async_reset)
  return 0;

 if (ip->id == lima_ip_pp_bcast) {
  struct lima_device *dev = ip->dev;
  struct lima_sched_pipe *pipe = dev->pipe + lima_pipe_pp;
  struct drm_lima_m450_pp_frame *frame = pipe->current_task->frame;

  for (i = 0; i < frame->num_pp; i++)
   err |= lima_pp_soft_reset_async_wait_one(pipe->processor[i]);
 } else
  err = lima_pp_soft_reset_async_wait_one(ip);

 ip->data.async_reset = 0;
 return err;
}
