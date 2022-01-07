
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vc4_exec_info {scalar_t__ last_ct0ca; scalar_t__ last_ct1ca; } ;
struct TYPE_3__ {int reset_work; } ;
struct vc4_dev {TYPE_1__ hangcheck; int job_lock; struct drm_device* dev; } ;
struct timer_list {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int timer; } ;


 int V3D_CTNCA (int) ;
 scalar_t__ V3D_READ (int ) ;
 struct vc4_dev* from_timer (int ,struct timer_list*,int ) ;
 TYPE_2__ hangcheck ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_dev* vc4 ;
 struct vc4_exec_info* vc4_first_bin_job (struct vc4_dev*) ;
 struct vc4_exec_info* vc4_first_render_job (struct vc4_dev*) ;
 int vc4_queue_hangcheck (struct drm_device*) ;

__attribute__((used)) static void
vc4_hangcheck_elapsed(struct timer_list *t)
{
 struct vc4_dev *vc4 = from_timer(vc4, t, hangcheck.timer);
 struct drm_device *dev = vc4->dev;
 uint32_t ct0ca, ct1ca;
 unsigned long irqflags;
 struct vc4_exec_info *bin_exec, *render_exec;

 spin_lock_irqsave(&vc4->job_lock, irqflags);

 bin_exec = vc4_first_bin_job(vc4);
 render_exec = vc4_first_render_job(vc4);


 if (!bin_exec && !render_exec) {
  spin_unlock_irqrestore(&vc4->job_lock, irqflags);
  return;
 }

 ct0ca = V3D_READ(V3D_CTNCA(0));
 ct1ca = V3D_READ(V3D_CTNCA(1));




 if ((bin_exec && ct0ca != bin_exec->last_ct0ca) ||
     (render_exec && ct1ca != render_exec->last_ct1ca)) {
  if (bin_exec)
   bin_exec->last_ct0ca = ct0ca;
  if (render_exec)
   render_exec->last_ct1ca = ct1ca;
  spin_unlock_irqrestore(&vc4->job_lock, irqflags);
  vc4_queue_hangcheck(dev);
  return;
 }

 spin_unlock_irqrestore(&vc4->job_lock, irqflags);





 schedule_work(&vc4->hangcheck.reset_work);
}
