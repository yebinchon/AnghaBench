
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* s_fence; } ;
struct v3d_job {TYPE_2__ base; int refcount; int done_fence; } ;
struct v3d_file_priv {int * sched_entity; } ;
typedef enum v3d_queue { ____Placeholder_v3d_queue } v3d_queue ;
struct TYPE_4__ {int finished; } ;


 int dma_fence_get (int *) ;
 int drm_sched_entity_push_job (TYPE_2__*,int *) ;
 int drm_sched_job_init (TYPE_2__*,int *,struct v3d_file_priv*) ;
 int kref_get (int *) ;

__attribute__((used)) static int
v3d_push_job(struct v3d_file_priv *v3d_priv,
      struct v3d_job *job, enum v3d_queue queue)
{
 int ret;

 ret = drm_sched_job_init(&job->base, &v3d_priv->sched_entity[queue],
     v3d_priv);
 if (ret)
  return ret;

 job->done_fence = dma_fence_get(&job->base.s_fence->finished);


 kref_get(&job->refcount);

 drm_sched_entity_push_job(&job->base, &v3d_priv->sched_entity[queue]);

 return 0;
}
