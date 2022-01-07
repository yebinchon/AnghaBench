
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v3d_dev {int reset_lock; TYPE_1__* queue; } ;
struct drm_sched_job {int dummy; } ;
typedef enum v3d_queue { ____Placeholder_v3d_queue } v3d_queue ;
struct TYPE_2__ {int sched; } ;


 int V3D_MAX_QUEUES ;
 int drm_sched_increase_karma (struct drm_sched_job*) ;
 int drm_sched_resubmit_jobs (int *) ;
 int drm_sched_start (int *,int) ;
 int drm_sched_stop (int *,struct drm_sched_job*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v3d_reset (struct v3d_dev*) ;

__attribute__((used)) static void
v3d_gpu_reset_for_timeout(struct v3d_dev *v3d, struct drm_sched_job *sched_job)
{
 enum v3d_queue q;

 mutex_lock(&v3d->reset_lock);


 for (q = 0; q < V3D_MAX_QUEUES; q++)
  drm_sched_stop(&v3d->queue[q].sched, sched_job);

 if (sched_job)
  drm_sched_increase_karma(sched_job);


 v3d_reset(v3d);

 for (q = 0; q < V3D_MAX_QUEUES; q++)
  drm_sched_resubmit_jobs(&v3d->queue[q].sched);


 for (q = 0; q < V3D_MAX_QUEUES; q++) {
  drm_sched_start(&v3d->queue[q].sched, 1);
 }

 mutex_unlock(&v3d->reset_lock);
}
