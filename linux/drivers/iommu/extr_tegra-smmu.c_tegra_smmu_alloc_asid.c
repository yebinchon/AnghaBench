
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_smmu {int lock; int asids; TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned long num_asids; } ;


 int ENOSPC ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static int tegra_smmu_alloc_asid(struct tegra_smmu *smmu, unsigned int *idp)
{
 unsigned long id;

 mutex_lock(&smmu->lock);

 id = find_first_zero_bit(smmu->asids, smmu->soc->num_asids);
 if (id >= smmu->soc->num_asids) {
  mutex_unlock(&smmu->lock);
  return -ENOSPC;
 }

 set_bit(id, smmu->asids);
 *idp = id;

 mutex_unlock(&smmu->lock);
 return 0;
}
