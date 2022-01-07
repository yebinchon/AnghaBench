
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; int list; } ;
struct TYPE_3__ {int timer; int reset_work; } ;
struct vc4_dev {TYPE_2__ purgeable; int power_lock; int job_done_work; TYPE_1__ hangcheck; int job_lock; int seqno_cb_list; int job_done_list; int render_job_list; int bin_job_list; int dma_fence_context; } ;
struct drm_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int dma_fence_context_alloc (int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_hangcheck_elapsed ;
 int vc4_job_done_work ;
 int vc4_reset_work ;

void
vc4_gem_init(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 vc4->dma_fence_context = dma_fence_context_alloc(1);

 INIT_LIST_HEAD(&vc4->bin_job_list);
 INIT_LIST_HEAD(&vc4->render_job_list);
 INIT_LIST_HEAD(&vc4->job_done_list);
 INIT_LIST_HEAD(&vc4->seqno_cb_list);
 spin_lock_init(&vc4->job_lock);

 INIT_WORK(&vc4->hangcheck.reset_work, vc4_reset_work);
 timer_setup(&vc4->hangcheck.timer, vc4_hangcheck_elapsed, 0);

 INIT_WORK(&vc4->job_done_work, vc4_job_done_work);

 mutex_init(&vc4->power_lock);

 INIT_LIST_HEAD(&vc4->purgeable.list);
 mutex_init(&vc4->purgeable.lock);
}
