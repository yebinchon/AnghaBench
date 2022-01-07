
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_task {int dummy; } ;
struct lima_sched_pipe {int dummy; } ;
struct drm_sched_job {int sched; } ;


 int DRM_ERROR (char*) ;
 int lima_sched_handle_error_task (struct lima_sched_pipe*,struct lima_sched_task*) ;
 struct lima_sched_pipe* to_lima_pipe (int ) ;
 struct lima_sched_task* to_lima_task (struct drm_sched_job*) ;

__attribute__((used)) static void lima_sched_timedout_job(struct drm_sched_job *job)
{
 struct lima_sched_pipe *pipe = to_lima_pipe(job->sched);
 struct lima_sched_task *task = to_lima_task(job);

 DRM_ERROR("lima job timeout\n");

 lima_sched_handle_error_task(pipe, task);
}
