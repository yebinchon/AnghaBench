
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_exec_info {scalar_t__ perfmon; } ;
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 struct vc4_exec_info* vc4_first_bin_job (struct vc4_dev*) ;
 int vc4_move_job_to_render (struct drm_device*,struct vc4_exec_info*) ;
 int vc4_submit_next_bin_job (struct drm_device*) ;

__attribute__((used)) static void
vc4_irq_finish_bin_job(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_exec_info *next, *exec = vc4_first_bin_job(vc4);

 if (!exec)
  return;

 vc4_move_job_to_render(dev, exec);
 next = vc4_first_bin_job(vc4);





 if (next && next->perfmon == exec->perfmon)
  vc4_submit_next_bin_job(dev);
}
