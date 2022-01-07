
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lima_sched_task {struct drm_lima_m450_pp_frame* frame; } ;
struct lima_sched_pipe {scalar_t__ num_processor; scalar_t__ bcast_processor; } ;
struct drm_lima_m450_pp_frame {scalar_t__ num_pp; scalar_t__ _pad; } ;
struct drm_lima_m400_pp_frame {scalar_t__ num_pp; scalar_t__ _pad; } ;


 int EINVAL ;

__attribute__((used)) static int lima_pp_task_validate(struct lima_sched_pipe *pipe,
     struct lima_sched_task *task)
{
 u32 num_pp;

 if (pipe->bcast_processor) {
  struct drm_lima_m450_pp_frame *f = task->frame;

  num_pp = f->num_pp;

  if (f->_pad)
   return -EINVAL;
 } else {
  struct drm_lima_m400_pp_frame *f = task->frame;

  num_pp = f->num_pp;
 }

 if (num_pp == 0 || num_pp > pipe->num_processor)
  return -EINVAL;

 return 0;
}
