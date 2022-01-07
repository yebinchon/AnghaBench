
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_exec_info {int head; scalar_t__ perfmon; } ;
struct vc4_dev {int bin_job_list; } ;
struct drm_device {int dummy; } ;


 int list_move_tail (int *,int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 struct vc4_exec_info* vc4_first_bin_job (struct vc4_dev*) ;
 int vc4_perfmon_stop (struct vc4_dev*,scalar_t__,int) ;
 int vc4_submit_next_bin_job (struct drm_device*) ;

__attribute__((used)) static void
vc4_cancel_bin_job(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_exec_info *exec = vc4_first_bin_job(vc4);

 if (!exec)
  return;


 if (exec->perfmon)
  vc4_perfmon_stop(vc4, exec->perfmon, 0);

 list_move_tail(&exec->head, &vc4->bin_job_list);
 vc4_submit_next_bin_job(dev);
}
