
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sense_rq_armed; int * sense_rq; } ;
typedef TYPE_1__ ide_drive_t ;


 int blk_mq_free_request (int *) ;

__attribute__((used)) static void ide_cd_free_sense(ide_drive_t *drive)
{
 if (!drive->sense_rq)
  return;

 blk_mq_free_request(drive->sense_rq);
 drive->sense_rq = ((void*)0);
 drive->sense_rq_armed = 0;
}
