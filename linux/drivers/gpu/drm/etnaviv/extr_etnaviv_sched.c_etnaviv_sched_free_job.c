
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gem_submit {int dummy; } ;
struct drm_sched_job {int dummy; } ;


 int drm_sched_job_cleanup (struct drm_sched_job*) ;
 int etnaviv_submit_put (struct etnaviv_gem_submit*) ;
 struct etnaviv_gem_submit* to_etnaviv_submit (struct drm_sched_job*) ;

__attribute__((used)) static void etnaviv_sched_free_job(struct drm_sched_job *sched_job)
{
 struct etnaviv_gem_submit *submit = to_etnaviv_submit(sched_job);

 drm_sched_job_cleanup(sched_job);

 etnaviv_submit_put(submit);
}
