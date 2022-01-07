
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct panfrost_mmu {int as; } ;
struct panfrost_device {int as_lock; } ;


 int mmu_hw_do_operation_locked (struct panfrost_device*,int ,int ,size_t,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mmu_hw_do_operation(struct panfrost_device *pfdev,
          struct panfrost_mmu *mmu,
          u64 iova, size_t size, u32 op)
{
 int ret;

 spin_lock(&pfdev->as_lock);
 ret = mmu_hw_do_operation_locked(pfdev, mmu->as, iova, size, op);
 spin_unlock(&pfdev->as_lock);
 return ret;
}
