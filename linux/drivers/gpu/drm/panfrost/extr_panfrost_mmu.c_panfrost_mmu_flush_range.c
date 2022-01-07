
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct panfrost_mmu {scalar_t__ as; } ;
struct panfrost_device {int dev; } ;


 int AS_COMMAND_FLUSH_PT ;
 int mmu_hw_do_operation (struct panfrost_device*,struct panfrost_mmu*,int ,size_t,int ) ;
 scalar_t__ pm_runtime_active (int ) ;
 int pm_runtime_get_noresume (int ) ;
 int pm_runtime_put_sync_autosuspend (int ) ;

__attribute__((used)) static void panfrost_mmu_flush_range(struct panfrost_device *pfdev,
         struct panfrost_mmu *mmu,
         u64 iova, size_t size)
{
 if (mmu->as < 0)
  return;

 pm_runtime_get_noresume(pfdev->dev);


 if (pm_runtime_active(pfdev->dev))
  mmu_hw_do_operation(pfdev, mmu, iova, size, AS_COMMAND_FLUSH_PT);

 pm_runtime_put_sync_autosuspend(pfdev->dev);
}
