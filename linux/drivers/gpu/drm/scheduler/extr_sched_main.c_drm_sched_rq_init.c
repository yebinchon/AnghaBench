
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_rq {struct drm_gpu_scheduler* sched; int * current_entity; int entities; int lock; } ;
struct drm_gpu_scheduler {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void drm_sched_rq_init(struct drm_gpu_scheduler *sched,
         struct drm_sched_rq *rq)
{
 spin_lock_init(&rq->lock);
 INIT_LIST_HEAD(&rq->entities);
 rq->current_entity = ((void*)0);
 rq->sched = sched;
}
