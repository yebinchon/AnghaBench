
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_exec_info {scalar_t__ perfmon; int * fence; int head; } ;
struct vc4_dev {int job_done_work; int job_wait_queue; int job_done_list; int finished_seqno; } ;
struct drm_device {int dummy; } ;


 int dma_fence_put (int *) ;
 int dma_fence_signal_locked (int *) ;
 int list_move_tail (int *,int *) ;
 int schedule_work (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 struct vc4_exec_info* vc4_first_bin_job (struct vc4_dev*) ;
 struct vc4_exec_info* vc4_first_render_job (struct vc4_dev*) ;
 int vc4_perfmon_stop (struct vc4_dev*,scalar_t__,int) ;
 int vc4_submit_next_bin_job (struct drm_device*) ;
 int vc4_submit_next_render_job (struct drm_device*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void
vc4_irq_finish_render_job(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_exec_info *exec = vc4_first_render_job(vc4);
 struct vc4_exec_info *nextbin, *nextrender;

 if (!exec)
  return;

 vc4->finished_seqno++;
 list_move_tail(&exec->head, &vc4->job_done_list);

 nextbin = vc4_first_bin_job(vc4);
 nextrender = vc4_first_render_job(vc4);




 if (exec->perfmon && !nextrender &&
     (!nextbin || nextbin->perfmon != exec->perfmon))
  vc4_perfmon_stop(vc4, exec->perfmon, 1);
 if (nextrender)
  vc4_submit_next_render_job(dev);
 else if (nextbin && nextbin->perfmon != exec->perfmon)
  vc4_submit_next_bin_job(dev);

 if (exec->fence) {
  dma_fence_signal_locked(exec->fence);
  dma_fence_put(exec->fence);
  exec->fence = ((void*)0);
 }

 wake_up_all(&vc4->job_wait_queue);
 schedule_work(&vc4->job_done_work);
}
