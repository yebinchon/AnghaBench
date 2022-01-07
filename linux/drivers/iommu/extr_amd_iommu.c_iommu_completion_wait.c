
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int lock; scalar_t__ cmd_sem; int need_sync; } ;


 int __iommu_queue_command_sync (struct amd_iommu*,struct iommu_cmd*,int) ;
 int build_completion_wait (struct iommu_cmd*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_on_sem (scalar_t__*) ;

__attribute__((used)) static int iommu_completion_wait(struct amd_iommu *iommu)
{
 struct iommu_cmd cmd;
 unsigned long flags;
 int ret;

 if (!iommu->need_sync)
  return 0;


 build_completion_wait(&cmd, (u64)&iommu->cmd_sem);

 raw_spin_lock_irqsave(&iommu->lock, flags);

 iommu->cmd_sem = 0;

 ret = __iommu_queue_command_sync(iommu, &cmd, 0);
 if (ret)
  goto out_unlock;

 ret = wait_on_sem(&iommu->cmd_sem);

out_unlock:
 raw_spin_unlock_irqrestore(&iommu->lock, flags);

 return ret;
}
