
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_kms {struct msm_gem_address_space* aspace; } ;
struct msm_gem_address_space {TYPE_2__* mmu; } ;
struct mdp5_kms {int num_hwmixers; int num_hwpipes; int * hwpipes; int * hwmixers; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* detach ) (TYPE_2__*,int ,int ) ;} ;


 int ARRAY_SIZE (int ) ;
 int iommu_ports ;
 int mdp5_mixer_destroy (int ) ;
 int mdp5_pipe_destroy (int ) ;
 int msm_gem_address_space_put (struct msm_gem_address_space*) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

__attribute__((used)) static void mdp5_kms_destroy(struct msm_kms *kms)
{
 struct mdp5_kms *mdp5_kms = to_mdp5_kms(to_mdp_kms(kms));
 struct msm_gem_address_space *aspace = kms->aspace;
 int i;

 for (i = 0; i < mdp5_kms->num_hwmixers; i++)
  mdp5_mixer_destroy(mdp5_kms->hwmixers[i]);

 for (i = 0; i < mdp5_kms->num_hwpipes; i++)
  mdp5_pipe_destroy(mdp5_kms->hwpipes[i]);

 if (aspace) {
  aspace->mmu->funcs->detach(aspace->mmu,
    iommu_ports, ARRAY_SIZE(iommu_ports));
  msm_gem_address_space_put(aspace);
 }
}
