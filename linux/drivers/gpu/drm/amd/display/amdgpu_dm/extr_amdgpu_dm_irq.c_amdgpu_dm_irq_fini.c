
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_list_head {int work; } ;
struct TYPE_2__ {struct irq_list_head* irq_handler_list_low_tab; } ;
struct amdgpu_device {TYPE_1__ dm; } ;


 int DAL_IRQ_SOURCES_NUMBER ;
 int DM_IRQ_TABLE_LOCK (struct amdgpu_device*,unsigned long) ;
 int DM_IRQ_TABLE_UNLOCK (struct amdgpu_device*,unsigned long) ;
 int DRM_DEBUG_KMS (char*) ;
 int flush_work (int *) ;

void amdgpu_dm_irq_fini(struct amdgpu_device *adev)
{
 int src;
 struct irq_list_head *lh;
 unsigned long irq_table_flags;
 DRM_DEBUG_KMS("DM_IRQ: releasing resources.\n");
 for (src = 0; src < DAL_IRQ_SOURCES_NUMBER; src++) {
  DM_IRQ_TABLE_LOCK(adev, irq_table_flags);



  lh = &adev->dm.irq_handler_list_low_tab[src];
  DM_IRQ_TABLE_UNLOCK(adev, irq_table_flags);
  flush_work(&lh->work);
 }
}
