
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_job {int v3d; } ;
struct drm_sched_job {int dummy; } ;


 struct v3d_job* to_v3d_job (struct drm_sched_job*) ;
 int v3d_gpu_reset_for_timeout (int ,struct drm_sched_job*) ;

__attribute__((used)) static void
v3d_generic_job_timedout(struct drm_sched_job *sched_job)
{
 struct v3d_job *job = to_v3d_job(sched_job);

 v3d_gpu_reset_for_timeout(job->v3d, sched_job);
}
