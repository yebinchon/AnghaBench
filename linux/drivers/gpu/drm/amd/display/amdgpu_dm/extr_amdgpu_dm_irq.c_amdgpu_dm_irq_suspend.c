
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_4__ {TYPE_1__* irq_handler_list_low_tab; int dc; struct list_head* irq_handler_list_high_tab; } ;
struct amdgpu_device {TYPE_2__ dm; } ;
struct TYPE_3__ {int work; struct list_head head; } ;


 int DC_IRQ_SOURCE_HPD1 ;
 int DC_IRQ_SOURCE_HPD6RX ;
 int DM_IRQ_TABLE_LOCK (struct amdgpu_device*,unsigned long) ;
 int DM_IRQ_TABLE_UNLOCK (struct amdgpu_device*,unsigned long) ;
 int DRM_DEBUG_KMS (char*) ;
 int dc_interrupt_set (int ,int,int) ;
 int flush_work (int *) ;
 int list_empty (struct list_head*) ;

int amdgpu_dm_irq_suspend(struct amdgpu_device *adev)
{
 int src;
 struct list_head *hnd_list_h;
 struct list_head *hnd_list_l;
 unsigned long irq_table_flags;

 DM_IRQ_TABLE_LOCK(adev, irq_table_flags);

 DRM_DEBUG_KMS("DM_IRQ: suspend\n");





 for (src = DC_IRQ_SOURCE_HPD1; src <= DC_IRQ_SOURCE_HPD6RX; src++) {
  hnd_list_l = &adev->dm.irq_handler_list_low_tab[src].head;
  hnd_list_h = &adev->dm.irq_handler_list_high_tab[src];
  if (!list_empty(hnd_list_l) || !list_empty(hnd_list_h))
   dc_interrupt_set(adev->dm.dc, src, 0);

  DM_IRQ_TABLE_UNLOCK(adev, irq_table_flags);
  flush_work(&adev->dm.irq_handler_list_low_tab[src].work);

  DM_IRQ_TABLE_LOCK(adev, irq_table_flags);
 }

 DM_IRQ_TABLE_UNLOCK(adev, irq_table_flags);
 return 0;
}
