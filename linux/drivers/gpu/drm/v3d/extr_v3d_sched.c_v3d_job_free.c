
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_job {int dummy; } ;
struct drm_sched_job {int dummy; } ;


 int drm_sched_job_cleanup (struct drm_sched_job*) ;
 struct v3d_job* to_v3d_job (struct drm_sched_job*) ;
 int v3d_job_put (struct v3d_job*) ;

__attribute__((used)) static void
v3d_job_free(struct drm_sched_job *sched_job)
{
 struct v3d_job *job = to_v3d_job(sched_job);

 drm_sched_job_cleanup(sched_job);
 v3d_job_put(job);
}
