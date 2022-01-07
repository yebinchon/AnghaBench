
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viommu_dev {int request_lock; int dev; } ;


 int __viommu_add_req (struct viommu_dev*,void*,size_t,int) ;
 int dev_dbg (int ,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int viommu_add_req(struct viommu_dev *viommu, void *buf, size_t len)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&viommu->request_lock, flags);
 ret = __viommu_add_req(viommu, buf, len, 0);
 if (ret)
  dev_dbg(viommu->dev, "could not add request: %d\n", ret);
 spin_unlock_irqrestore(&viommu->request_lock, flags);

 return ret;
}
