
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_exec_info {int head; } ;
struct vc4_dev {int render_job_list; } ;
struct drm_device {int dummy; } ;


 int list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_submit_next_render_job (struct drm_device*) ;

void
vc4_move_job_to_render(struct drm_device *dev, struct vc4_exec_info *exec)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 bool was_empty = list_empty(&vc4->render_job_list);

 list_move_tail(&exec->head, &vc4->render_job_list);
 if (was_empty)
  vc4_submit_next_render_job(dev);
}
