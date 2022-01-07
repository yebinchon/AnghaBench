
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_list_head {int work; int head; } ;
struct TYPE_2__ {int * irq_handler_list_high_tab; struct irq_list_head* irq_handler_list_low_tab; int irq_handler_list_table_lock; } ;
struct amdgpu_device {TYPE_1__ dm; } ;


 int DAL_IRQ_SOURCES_NUMBER ;
 int DRM_DEBUG_KMS (char*) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int dm_irq_work_func ;
 int spin_lock_init (int *) ;

int amdgpu_dm_irq_init(struct amdgpu_device *adev)
{
 int src;
 struct irq_list_head *lh;

 DRM_DEBUG_KMS("DM_IRQ\n");

 spin_lock_init(&adev->dm.irq_handler_list_table_lock);

 for (src = 0; src < DAL_IRQ_SOURCES_NUMBER; src++) {

  lh = &adev->dm.irq_handler_list_low_tab[src];
  INIT_LIST_HEAD(&lh->head);
  INIT_WORK(&lh->work, dm_irq_work_func);


  INIT_LIST_HEAD(&adev->dm.irq_handler_list_high_tab[src]);
 }

 return 0;
}
