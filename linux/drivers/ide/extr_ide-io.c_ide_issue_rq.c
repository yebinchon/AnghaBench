
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct request {int rq_flags; int queuelist; } ;
struct ide_host {int host_flags; TYPE_2__* cur_port; } ;
typedef scalar_t__ ide_startstop_t ;
struct TYPE_14__ {int lock; struct request* rq; TYPE_3__* cur_dev; struct ide_host* host; TYPE_1__* tp_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_15__ {int dev_flags; int rq_list; int sleep; TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
typedef int blk_status_t ;
struct TYPE_17__ {int * special; } ;
struct TYPE_16__ {int resid_len; } ;
struct TYPE_13__ {int (* write_devctl ) (TYPE_2__*,int) ;} ;


 int ATA_DEVCTL_OBS ;
 int ATA_NIEN ;
 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_OK ;
 int IDE_DFLAG_BLOCKED ;
 int IDE_DFLAG_NIEN_QUIRK ;
 int IDE_DFLAG_PARKED ;
 int IDE_DFLAG_SLEEPING ;
 int IDE_HFLAG_SERIALIZE ;
 int RQF_DONTPREP ;
 int RQF_PREEMPT ;
 int WARN_ON_ONCE (struct request*) ;
 scalar_t__ ata_pm_request (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_is_passthrough (struct request*) ;
 scalar_t__ ide_lock_host (struct ide_host*,TYPE_2__*) ;
 int ide_lock_port (TYPE_2__*) ;
 TYPE_9__* ide_req (struct request*) ;
 int ide_requeue_and_plug (TYPE_3__*,struct request*) ;
 scalar_t__ ide_stopped ;
 int ide_unlock_host (struct ide_host*) ;
 int ide_unlock_port (TYPE_2__*) ;
 int jiffies ;
 int list_add (int *,int *) ;
 int might_sleep () ;
 TYPE_6__* scsi_req (struct request*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ start_request (TYPE_3__*,struct request*) ;
 int stub1 (TYPE_2__*,int) ;
 scalar_t__ time_after (int ,int ) ;

blk_status_t ide_issue_rq(ide_drive_t *drive, struct request *rq,
     bool local_requeue)
{
 ide_hwif_t *hwif = drive->hwif;
 struct ide_host *host = hwif->host;
 ide_startstop_t startstop;

 if (!blk_rq_is_passthrough(rq) && !(rq->rq_flags & RQF_DONTPREP)) {
  rq->rq_flags |= RQF_DONTPREP;
  ide_req(rq)->special = ((void*)0);
 }


 might_sleep();

 if (ide_lock_host(host, hwif))
  return BLK_STS_DEV_RESOURCE;

 spin_lock_irq(&hwif->lock);

 if (!ide_lock_port(hwif)) {
  ide_hwif_t *prev_port;

  WARN_ON_ONCE(hwif->rq);
repeat:
  prev_port = hwif->host->cur_port;
  if (drive->dev_flags & IDE_DFLAG_SLEEPING &&
      time_after(drive->sleep, jiffies)) {
   ide_unlock_port(hwif);
   goto plug_device;
  }

  if ((hwif->host->host_flags & IDE_HFLAG_SERIALIZE) &&
      hwif != prev_port) {
   ide_drive_t *cur_dev =
    prev_port ? prev_port->cur_dev : ((void*)0);





   if (cur_dev &&
       (cur_dev->dev_flags & IDE_DFLAG_NIEN_QUIRK) == 0)
    prev_port->tp_ops->write_devctl(prev_port,
        ATA_NIEN |
        ATA_DEVCTL_OBS);

   hwif->host->cur_port = hwif;
  }
  hwif->cur_dev = drive;
  drive->dev_flags &= ~(IDE_DFLAG_SLEEPING | IDE_DFLAG_PARKED);
  if ((drive->dev_flags & IDE_DFLAG_BLOCKED) &&
      ata_pm_request(rq) == 0 &&
      (rq->rq_flags & RQF_PREEMPT) == 0) {

   ide_unlock_port(hwif);
   goto plug_device;
  }

  scsi_req(rq)->resid_len = blk_rq_bytes(rq);
  hwif->rq = rq;

  spin_unlock_irq(&hwif->lock);
  startstop = start_request(drive, rq);
  spin_lock_irq(&hwif->lock);

  if (startstop == ide_stopped) {
   rq = hwif->rq;
   hwif->rq = ((void*)0);
   if (rq)
    goto repeat;
   ide_unlock_port(hwif);
   goto out;
  }
 } else {
plug_device:
  if (local_requeue)
   list_add(&rq->queuelist, &drive->rq_list);
  spin_unlock_irq(&hwif->lock);
  ide_unlock_host(host);
  if (!local_requeue)
   ide_requeue_and_plug(drive, rq);
  return BLK_STS_OK;
 }

out:
 spin_unlock_irq(&hwif->lock);
 if (rq == ((void*)0))
  ide_unlock_host(host);
 return BLK_STS_OK;
}
