
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct blk_mq_queue_data {int rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
struct TYPE_6__ {int lock; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_7__ {scalar_t__ sense_rq_active; TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
typedef int blk_status_t ;
struct TYPE_5__ {TYPE_3__* queuedata; } ;


 int BLK_STS_DEV_RESOURCE ;
 int blk_mq_start_request (int ) ;
 int ide_issue_rq (TYPE_3__*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

blk_status_t ide_queue_rq(struct blk_mq_hw_ctx *hctx,
     const struct blk_mq_queue_data *bd)
{
 ide_drive_t *drive = hctx->queue->queuedata;
 ide_hwif_t *hwif = drive->hwif;

 spin_lock_irq(&hwif->lock);
 if (drive->sense_rq_active) {
  spin_unlock_irq(&hwif->lock);
  return BLK_STS_DEV_RESOURCE;
 }
 spin_unlock_irq(&hwif->lock);

 blk_mq_start_request(bd->rq);
 return ide_issue_rq(drive, bd->rq, 0);
}
