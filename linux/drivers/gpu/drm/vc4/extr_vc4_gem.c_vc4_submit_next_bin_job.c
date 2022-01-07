
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_exec_info {scalar_t__ perfmon; scalar_t__ ct0ca; scalar_t__ ct0ea; } ;
struct vc4_dev {scalar_t__ active_perfmon; } ;
struct drm_device {int dummy; } ;


 int submit_cl (struct drm_device*,int ,scalar_t__,scalar_t__) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 struct vc4_exec_info* vc4_first_bin_job (struct vc4_dev*) ;
 int vc4_flush_caches (struct drm_device*) ;
 int vc4_move_job_to_render (struct drm_device*,struct vc4_exec_info*) ;
 int vc4_perfmon_start (struct vc4_dev*,scalar_t__) ;

void
vc4_submit_next_bin_job(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_exec_info *exec;

again:
 exec = vc4_first_bin_job(vc4);
 if (!exec)
  return;

 vc4_flush_caches(dev);




 if (exec->perfmon && vc4->active_perfmon != exec->perfmon)
  vc4_perfmon_start(vc4, exec->perfmon);




 if (exec->ct0ca != exec->ct0ea) {
  submit_cl(dev, 0, exec->ct0ca, exec->ct0ea);
 } else {
  struct vc4_exec_info *next;

  vc4_move_job_to_render(dev, exec);
  next = vc4_first_bin_job(vc4);






  if (next && next->perfmon == exec->perfmon)
   goto again;
 }
}
