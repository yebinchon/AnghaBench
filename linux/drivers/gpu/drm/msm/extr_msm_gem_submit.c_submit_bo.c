
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
struct msm_gem_submit {size_t nr_bos; TYPE_1__* bos; } ;
struct msm_gem_object {int dummy; } ;
struct TYPE_2__ {int flags; int iova; struct msm_gem_object* obj; } ;


 int BO_VALID ;
 int DRM_ERROR (char*,size_t,size_t) ;
 int EINVAL ;

__attribute__((used)) static int submit_bo(struct msm_gem_submit *submit, uint32_t idx,
  struct msm_gem_object **obj, uint64_t *iova, bool *valid)
{
 if (idx >= submit->nr_bos) {
  DRM_ERROR("invalid buffer index: %u (out of %u)\n",
    idx, submit->nr_bos);
  return -EINVAL;
 }

 if (obj)
  *obj = submit->bos[idx].obj;
 if (iova)
  *iova = submit->bos[idx].iova;
 if (valid)
  *valid = !!(submit->bos[idx].flags & BO_VALID);

 return 0;
}
