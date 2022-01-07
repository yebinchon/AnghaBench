
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_cmd {int dummy; } ;
struct amd_iommu {int lock; } ;


 int __iommu_queue_command_sync (struct amd_iommu*,struct iommu_cmd*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int iommu_queue_command_sync(struct amd_iommu *iommu,
        struct iommu_cmd *cmd,
        bool sync)
{
 unsigned long flags;
 int ret;

 raw_spin_lock_irqsave(&iommu->lock, flags);
 ret = __iommu_queue_command_sync(iommu, cmd, sync);
 raw_spin_unlock_irqrestore(&iommu->lock, flags);

 return ret;
}
