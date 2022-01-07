
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_sched_rq* sched_rq; } ;
struct lima_sched_pipe {TYPE_1__ base; } ;
struct lima_sched_context {int base; } ;
struct drm_sched_rq {int dummy; } ;
typedef int atomic_t ;


 int DRM_SCHED_PRIORITY_NORMAL ;
 int drm_sched_entity_init (int *,struct drm_sched_rq**,int,int *) ;

int lima_sched_context_init(struct lima_sched_pipe *pipe,
       struct lima_sched_context *context,
       atomic_t *guilty)
{
 struct drm_sched_rq *rq = pipe->base.sched_rq + DRM_SCHED_PRIORITY_NORMAL;

 return drm_sched_entity_init(&context->base, &rq, 1, guilty);
}
