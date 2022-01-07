
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu {int lock; int asids; } ;


 int clear_bit (unsigned int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void tegra_smmu_free_asid(struct tegra_smmu *smmu, unsigned int id)
{
 mutex_lock(&smmu->lock);
 clear_bit(id, smmu->asids);
 mutex_unlock(&smmu->lock);
}
