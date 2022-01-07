
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int dev; int sched; } ;


 int dev_name (int ) ;
 int drm_sched_init (int *,int *,int ,int ,int ,int ) ;
 int etnaviv_hw_jobs_limit ;
 int etnaviv_job_hang_limit ;
 int etnaviv_sched_ops ;
 int msecs_to_jiffies (int) ;

int etnaviv_sched_init(struct etnaviv_gpu *gpu)
{
 int ret;

 ret = drm_sched_init(&gpu->sched, &etnaviv_sched_ops,
        etnaviv_hw_jobs_limit, etnaviv_job_hang_limit,
        msecs_to_jiffies(500), dev_name(gpu->dev));
 if (ret)
  return ret;

 return 0;
}
