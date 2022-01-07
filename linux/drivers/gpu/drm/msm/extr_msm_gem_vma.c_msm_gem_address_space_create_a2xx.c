
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u64 ;
struct msm_gpu {int dummy; } ;
struct msm_gem_address_space {char const* name; int kref; int mm; int mmu; int lock; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct msm_gem_address_space* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int drm_mm_init (int *,int,int) ;
 int kref_init (int *) ;
 struct msm_gem_address_space* kzalloc (int,int ) ;
 int msm_gpummu_new (struct device*,struct msm_gpu*) ;
 int spin_lock_init (int *) ;

struct msm_gem_address_space *
msm_gem_address_space_create_a2xx(struct device *dev, struct msm_gpu *gpu,
  const char *name, uint64_t va_start, uint64_t va_end)
{
 struct msm_gem_address_space *aspace;
 u64 size = va_end - va_start;

 aspace = kzalloc(sizeof(*aspace), GFP_KERNEL);
 if (!aspace)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&aspace->lock);
 aspace->name = name;
 aspace->mmu = msm_gpummu_new(dev, gpu);

 drm_mm_init(&aspace->mm, (va_start >> PAGE_SHIFT),
  size >> PAGE_SHIFT);

 kref_init(&aspace->kref);

 return aspace;
}
