
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_kms {struct msm_gem_address_space* aspace; } ;
struct msm_gem_address_space {TYPE_3__* mmu; } ;
struct mdp4_kms {scalar_t__ rpm_enabled; int blank_cursor_bo; scalar_t__ blank_cursor_iova; TYPE_2__* dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {struct device* dev; } ;
struct TYPE_4__ {int (* detach ) (TYPE_3__*,int ,int ) ;} ;


 int ARRAY_SIZE (int ) ;
 int drm_gem_object_put_unlocked (int ) ;
 int iommu_ports ;
 int kfree (struct mdp4_kms*) ;
 int msm_gem_address_space_put (struct msm_gem_address_space*) ;
 int msm_gem_unpin_iova (int ,struct msm_gem_address_space*) ;
 int pm_runtime_disable (struct device*) ;
 int stub1 (TYPE_3__*,int ,int ) ;
 struct mdp4_kms* to_mdp4_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

__attribute__((used)) static void mdp4_destroy(struct msm_kms *kms)
{
 struct mdp4_kms *mdp4_kms = to_mdp4_kms(to_mdp_kms(kms));
 struct device *dev = mdp4_kms->dev->dev;
 struct msm_gem_address_space *aspace = kms->aspace;

 if (mdp4_kms->blank_cursor_iova)
  msm_gem_unpin_iova(mdp4_kms->blank_cursor_bo, kms->aspace);
 drm_gem_object_put_unlocked(mdp4_kms->blank_cursor_bo);

 if (aspace) {
  aspace->mmu->funcs->detach(aspace->mmu,
    iommu_ports, ARRAY_SIZE(iommu_ports));
  msm_gem_address_space_put(aspace);
 }

 if (mdp4_kms->rpm_enabled)
  pm_runtime_disable(dev);

 kfree(mdp4_kms);
}
