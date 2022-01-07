
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct v3d_dev {int dummy; } ;
struct TYPE_2__ {struct v3d_dev* v3d; } ;
struct v3d_csd_job {scalar_t__ timedout_batches; TYPE_1__ base; } ;
struct drm_sched_job {int dummy; } ;


 scalar_t__ V3D_CORE_READ (int ,int ) ;
 int V3D_CSD_CURRENT_CFG4 ;
 struct v3d_csd_job* to_csd_job (struct drm_sched_job*) ;
 int v3d_gpu_reset_for_timeout (struct v3d_dev*,struct drm_sched_job*) ;

__attribute__((used)) static void
v3d_csd_job_timedout(struct drm_sched_job *sched_job)
{
 struct v3d_csd_job *job = to_csd_job(sched_job);
 struct v3d_dev *v3d = job->base.v3d;
 u32 batches = V3D_CORE_READ(0, V3D_CSD_CURRENT_CFG4);




 if (job->timedout_batches != batches) {
  job->timedout_batches = batches;
  return;
 }

 v3d_gpu_reset_for_timeout(v3d, sched_job);
}
