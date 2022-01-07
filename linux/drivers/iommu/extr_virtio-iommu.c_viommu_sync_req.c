
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viommu_dev {int request_lock; int dev; } ;


 int __viommu_sync_req (struct viommu_dev*) ;
 int dev_dbg (int ,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int viommu_sync_req(struct viommu_dev *viommu)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&viommu->request_lock, flags);
 ret = __viommu_sync_req(viommu);
 if (ret)
  dev_dbg(viommu->dev, "could not sync requests (%d)\n", ret);
 spin_unlock_irqrestore(&viommu->request_lock, flags);

 return ret;
}
