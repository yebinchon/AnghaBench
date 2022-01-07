
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_job {int dummy; } ;
struct drm_sched_job {int dummy; } ;


 int drm_sched_job_cleanup (struct drm_sched_job*) ;
 int panfrost_job_put (struct panfrost_job*) ;
 struct panfrost_job* to_panfrost_job (struct drm_sched_job*) ;

__attribute__((used)) static void panfrost_job_free(struct drm_sched_job *sched_job)
{
 struct panfrost_job *job = to_panfrost_job(sched_job);

 drm_sched_job_cleanup(sched_job);

 panfrost_job_put(job);
}
