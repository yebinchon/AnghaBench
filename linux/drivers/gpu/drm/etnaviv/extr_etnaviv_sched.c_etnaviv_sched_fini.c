
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int sched; } ;


 int drm_sched_fini (int *) ;

void etnaviv_sched_fini(struct etnaviv_gpu *gpu)
{
 drm_sched_fini(&gpu->sched);
}
