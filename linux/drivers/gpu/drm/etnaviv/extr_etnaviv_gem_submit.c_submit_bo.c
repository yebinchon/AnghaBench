
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct etnaviv_gem_submit_bo {int dummy; } ;
struct etnaviv_gem_submit {size_t nr_bos; struct etnaviv_gem_submit_bo* bos; } ;


 int DRM_ERROR (char*,size_t,size_t) ;
 int EINVAL ;

__attribute__((used)) static int submit_bo(struct etnaviv_gem_submit *submit, u32 idx,
 struct etnaviv_gem_submit_bo **bo)
{
 if (idx >= submit->nr_bos) {
  DRM_ERROR("invalid buffer index: %u (out of %u)\n",
    idx, submit->nr_bos);
  return -EINVAL;
 }

 *bo = &submit->bos[idx];

 return 0;
}
