
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_render_job {int timedout_ctra; int timedout_ctca; } ;
struct drm_sched_job {int dummy; } ;


 int V3D_RENDER ;
 struct v3d_render_job* to_render_job (struct drm_sched_job*) ;
 int v3d_cl_job_timedout (struct drm_sched_job*,int ,int *,int *) ;

__attribute__((used)) static void
v3d_render_job_timedout(struct drm_sched_job *sched_job)
{
 struct v3d_render_job *job = to_render_job(sched_job);

 v3d_cl_job_timedout(sched_job, V3D_RENDER,
       &job->timedout_ctca, &job->timedout_ctra);
}
