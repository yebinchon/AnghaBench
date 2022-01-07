
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct request {int dummy; } ;
struct ide_pm_state {int pm_state; int pm_step; } ;
struct ide_driver {int (* resume ) (TYPE_1__*) ;} ;
struct device {scalar_t__ driver; } ;
typedef int rqpm ;
typedef int ide_hwif_t ;
struct TYPE_8__ {int dn; int queue; int * hwif; } ;
typedef TYPE_1__ ide_drive_t ;
struct TYPE_9__ {struct ide_pm_state* special; int type; } ;


 int ATA_PRIV_PM_RESUME ;
 int BLK_MQ_REQ_PREEMPT ;
 int IDE_PM_START_RESUME ;
 int PM_EVENT_ON ;
 int REQ_OP_DRV_IN ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_mq_start_stopped_hw_queues (int ,int) ;
 int blk_put_request (struct request*) ;
 int ide_acpi_exec_tfs (TYPE_1__*) ;
 int ide_acpi_push_timing (int *) ;
 int ide_acpi_set_state (int *,int) ;
 TYPE_1__* ide_get_pair_dev (TYPE_1__*) ;
 int ide_pm_execute_rq (struct request*) ;
 scalar_t__ ide_port_acpi (int *) ;
 TYPE_4__* ide_req (struct request*) ;
 int memset (struct ide_pm_state*,int ,int) ;
 int stub1 (TYPE_1__*) ;
 TYPE_1__* to_ide_device (struct device*) ;
 struct ide_driver* to_ide_driver (scalar_t__) ;

int generic_ide_resume(struct device *dev)
{
 ide_drive_t *drive = to_ide_device(dev);
 ide_drive_t *pair = ide_get_pair_dev(drive);
 ide_hwif_t *hwif = drive->hwif;
 struct request *rq;
 struct ide_pm_state rqpm;
 int err;

 blk_mq_start_stopped_hw_queues(drive->queue, 1);

 if (ide_port_acpi(hwif)) {

  if ((drive->dn & 1) == 0 || pair == ((void*)0)) {
   ide_acpi_set_state(hwif, 1);
   ide_acpi_push_timing(hwif);
  }

  ide_acpi_exec_tfs(drive);
 }

 memset(&rqpm, 0, sizeof(rqpm));
 rq = blk_get_request(drive->queue, REQ_OP_DRV_IN, BLK_MQ_REQ_PREEMPT);
 ide_req(rq)->type = ATA_PRIV_PM_RESUME;
 ide_req(rq)->special = &rqpm;
 rqpm.pm_step = IDE_PM_START_RESUME;
 rqpm.pm_state = PM_EVENT_ON;

 err = ide_pm_execute_rq(rq);
 blk_put_request(rq);

 if (err == 0 && dev->driver) {
  struct ide_driver *drv = to_ide_driver(dev->driver);

  if (drv->resume)
   drv->resume(drive);
 }

 return err;
}
