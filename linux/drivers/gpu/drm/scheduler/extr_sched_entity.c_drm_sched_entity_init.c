
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_rq {int dummy; } ;
struct drm_sched_entity {unsigned int num_rq_list; int fence_context; int fence_seq; int job_queue; int rq_lock; int * last_scheduled; struct drm_sched_rq* rq; struct drm_sched_rq** rq_list; int * guilty; int list; } ;
typedef int atomic_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int dma_fence_context_alloc (int) ;
 struct drm_sched_rq** kcalloc (unsigned int,int,int ) ;
 int memset (struct drm_sched_entity*,int ,int) ;
 int spin_lock_init (int *) ;
 int spsc_queue_init (int *) ;

int drm_sched_entity_init(struct drm_sched_entity *entity,
     struct drm_sched_rq **rq_list,
     unsigned int num_rq_list,
     atomic_t *guilty)
{
 int i;

 if (!(entity && rq_list && (num_rq_list == 0 || rq_list[0])))
  return -EINVAL;

 memset(entity, 0, sizeof(struct drm_sched_entity));
 INIT_LIST_HEAD(&entity->list);
 entity->rq = ((void*)0);
 entity->guilty = guilty;
 entity->num_rq_list = num_rq_list;
 entity->rq_list = kcalloc(num_rq_list, sizeof(struct drm_sched_rq *),
    GFP_KERNEL);
 if (!entity->rq_list)
  return -ENOMEM;

 for (i = 0; i < num_rq_list; ++i)
  entity->rq_list[i] = rq_list[i];

 if (num_rq_list)
  entity->rq = rq_list[0];

 entity->last_scheduled = ((void*)0);

 spin_lock_init(&entity->rq_lock);
 spsc_queue_init(&entity->job_queue);

 atomic_set(&entity->fence_seq, 0);
 entity->fence_context = dma_fence_context_alloc(2);

 return 0;
}
