
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request {int queuelist; } ;
struct TYPE_3__ {int sense_rq_active; int rq_work; int rq_list; } ;
typedef TYPE_1__ ide_drive_t ;


 int kblockd_schedule_work (int *) ;
 int list_add_tail (int *,int *) ;

void ide_insert_request_head(ide_drive_t *drive, struct request *rq)
{
 drive->sense_rq_active = 1;
 list_add_tail(&rq->queuelist, &drive->rq_list);
 kblockd_schedule_work(&drive->rq_work);
}
