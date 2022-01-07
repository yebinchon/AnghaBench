
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct msm_gem_address_space {char const* name; int kref; int mm; int mmu; int lock; } ;
struct TYPE_2__ {int aperture_end; int aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct msm_gem_address_space* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int drm_mm_init (int *,int,int) ;
 int kref_init (int *) ;
 struct msm_gem_address_space* kzalloc (int,int ) ;
 int msm_iommu_new (struct device*,struct iommu_domain*) ;
 int spin_lock_init (int *) ;

struct msm_gem_address_space *
msm_gem_address_space_create(struct device *dev, struct iommu_domain *domain,
  const char *name)
{
 struct msm_gem_address_space *aspace;
 u64 size = domain->geometry.aperture_end -
  domain->geometry.aperture_start;

 aspace = kzalloc(sizeof(*aspace), GFP_KERNEL);
 if (!aspace)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&aspace->lock);
 aspace->name = name;
 aspace->mmu = msm_iommu_new(dev, domain);

 drm_mm_init(&aspace->mm, (domain->geometry.aperture_start >> PAGE_SHIFT),
  size >> PAGE_SHIFT);

 kref_init(&aspace->kref);

 return aspace;
}
