
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int name; int major; int sg_table; int gendev_rel_comp; int gendev; int * portdev; int irq; TYPE_1__* host; scalar_t__ present; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_8__ {int get_lock; } ;


 int BUG_ON (int ) ;
 int MAX_DRIVES ;
 int MKDEV (int ,int ) ;
 int PARTN_BITS ;
 int __ide_port_unregister_devices (TYPE_2__*) ;
 int blk_unregister_region (int ,int) ;
 int device_unregister (int *) ;
 int free_irq (int ,TYPE_2__*) ;
 int ide_cfg_mtx ;
 int ide_proc_unregister_port (TYPE_2__*) ;
 int ide_release_dma_engine (TYPE_2__*) ;
 int in_interrupt () ;
 int irqs_disabled () ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_blkdev (int ,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ide_unregister(ide_hwif_t *hwif)
{
 BUG_ON(in_interrupt());
 BUG_ON(irqs_disabled());

 mutex_lock(&ide_cfg_mtx);

 if (hwif->present) {
  __ide_port_unregister_devices(hwif);
  hwif->present = 0;
 }

 ide_proc_unregister_port(hwif);

 if (!hwif->host->get_lock)
  free_irq(hwif->irq, hwif);

 device_unregister(hwif->portdev);
 device_unregister(&hwif->gendev);
 wait_for_completion(&hwif->gendev_rel_comp);




 blk_unregister_region(MKDEV(hwif->major, 0), MAX_DRIVES<<PARTN_BITS);
 kfree(hwif->sg_table);
 unregister_blkdev(hwif->major, hwif->name);

 ide_release_dma_engine(hwif);

 mutex_unlock(&ide_cfg_mtx);
}
