
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_perfmon_request {unsigned int flags; } ;
struct etnaviv_gpu {int dummy; } ;
struct etnaviv_gem_submit {unsigned int nr_pmrs; int exec_state; struct etnaviv_perfmon_request* pmrs; } ;
struct etnaviv_event {struct etnaviv_gem_submit* submit; } ;


 int etnaviv_perfmon_process (struct etnaviv_gpu*,struct etnaviv_perfmon_request const*,int ) ;

__attribute__((used)) static void sync_point_perfmon_sample(struct etnaviv_gpu *gpu,
 struct etnaviv_event *event, unsigned int flags)
{
 const struct etnaviv_gem_submit *submit = event->submit;
 unsigned int i;

 for (i = 0; i < submit->nr_pmrs; i++) {
  const struct etnaviv_perfmon_request *pmr = submit->pmrs + i;

  if (pmr->flags == flags)
   etnaviv_perfmon_process(gpu, pmr, submit->exec_state);
 }
}
