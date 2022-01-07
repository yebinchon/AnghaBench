
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct etnaviv_gem_submit_bo {TYPE_2__* obj; } ;
struct etnaviv_gem_submit {scalar_t__ nr_pmrs; TYPE_1__* pmrs; } ;
struct drm_etnaviv_gem_submit_pmr {scalar_t__ read_offset; int flags; int sequence; int signal; int domain; int read_idx; } ;
struct TYPE_6__ {int size; } ;
struct TYPE_5__ {TYPE_3__ base; } ;
struct TYPE_4__ {int flags; int offset; int bo_vma; int sequence; int signal; int domain; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int ETNA_PM_PROCESS_POST ;
 int ETNA_PM_PROCESS_PRE ;
 int etnaviv_gem_vmap (TYPE_3__*) ;
 scalar_t__ etnaviv_pm_req_validate (struct drm_etnaviv_gem_submit_pmr const*,scalar_t__) ;
 int submit_bo (struct etnaviv_gem_submit*,int ,struct etnaviv_gem_submit_bo**) ;

__attribute__((used)) static int submit_perfmon_validate(struct etnaviv_gem_submit *submit,
  u32 exec_state, const struct drm_etnaviv_gem_submit_pmr *pmrs)
{
 u32 i;

 for (i = 0; i < submit->nr_pmrs; i++) {
  const struct drm_etnaviv_gem_submit_pmr *r = pmrs + i;
  struct etnaviv_gem_submit_bo *bo;
  int ret;

  ret = submit_bo(submit, r->read_idx, &bo);
  if (ret)
   return ret;


  if (r->read_offset == 0) {
   DRM_ERROR("perfmon request: offset is 0");
   return -EINVAL;
  }

  if (r->read_offset >= bo->obj->base.size - sizeof(u32)) {
   DRM_ERROR("perfmon request: offset %u outside object", i);
   return -EINVAL;
  }

  if (r->flags & ~(ETNA_PM_PROCESS_PRE | ETNA_PM_PROCESS_POST)) {
   DRM_ERROR("perfmon request: flags are not valid");
   return -EINVAL;
  }

  if (etnaviv_pm_req_validate(r, exec_state)) {
   DRM_ERROR("perfmon request: domain or signal not valid");
   return -EINVAL;
  }

  submit->pmrs[i].flags = r->flags;
  submit->pmrs[i].domain = r->domain;
  submit->pmrs[i].signal = r->signal;
  submit->pmrs[i].sequence = r->sequence;
  submit->pmrs[i].offset = r->read_offset;
  submit->pmrs[i].bo_vma = etnaviv_gem_vmap(&bo->obj->base);
 }

 return 0;
}
