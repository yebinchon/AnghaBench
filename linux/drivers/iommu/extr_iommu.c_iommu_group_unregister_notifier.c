
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct iommu_group {int notifier; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;

int iommu_group_unregister_notifier(struct iommu_group *group,
        struct notifier_block *nb)
{
 return blocking_notifier_chain_unregister(&group->notifier, nb);
}
