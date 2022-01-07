
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
typedef int ide_startstop_t ;
typedef int ide_drive_t ;
struct TYPE_4__ {int (* special ) (int *,int) ;} ;
struct TYPE_3__ {int result; int * cmd; } ;


 int blk_rq_bytes (struct request*) ;
 int ide_complete_rq (int *,int ,int ) ;
 TYPE_2__* ide_req (struct request*) ;
 int ide_stopped ;
 TYPE_1__* scsi_req (struct request*) ;

ide_startstop_t ide_do_devset(ide_drive_t *drive, struct request *rq)
{
 int err, (*setfunc)(ide_drive_t *, int) = ide_req(rq)->special;

 err = setfunc(drive, *(int *)&scsi_req(rq)->cmd[1]);
 if (err)
  scsi_req(rq)->result = err;
 ide_complete_rq(drive, 0, blk_rq_bytes(rq));
 return ide_stopped;
}
