
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panfrost_job_slot {TYPE_2__* queue; } ;
struct panfrost_file_priv {int * sched_entity; struct panfrost_device* pfdev; } ;
struct panfrost_device {struct panfrost_job_slot* js; } ;
struct drm_sched_rq {int dummy; } ;
struct TYPE_3__ {struct drm_sched_rq* sched_rq; } ;
struct TYPE_4__ {TYPE_1__ sched; } ;


 size_t DRM_SCHED_PRIORITY_NORMAL ;
 int NUM_JOB_SLOTS ;
 scalar_t__ WARN_ON (int) ;
 int drm_sched_entity_init (int *,struct drm_sched_rq**,int,int *) ;

int panfrost_job_open(struct panfrost_file_priv *panfrost_priv)
{
 struct panfrost_device *pfdev = panfrost_priv->pfdev;
 struct panfrost_job_slot *js = pfdev->js;
 struct drm_sched_rq *rq;
 int ret, i;

 for (i = 0; i < NUM_JOB_SLOTS; i++) {
  rq = &js->queue[i].sched.sched_rq[DRM_SCHED_PRIORITY_NORMAL];
  ret = drm_sched_entity_init(&panfrost_priv->sched_entity[i], &rq, 1, ((void*)0));
  if (WARN_ON(ret))
   return ret;
 }
 return 0;
}
