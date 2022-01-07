
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_address_space {int kref; } ;


 int kref_put (int *,int ) ;
 int msm_gem_address_space_destroy ;

void msm_gem_address_space_put(struct msm_gem_address_space *aspace)
{
 if (aspace)
  kref_put(&aspace->kref, msm_gem_address_space_destroy);
}
