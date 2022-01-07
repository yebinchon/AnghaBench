
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_5__ {struct request* rq; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ blk_noretry_request (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int ide_end_rq (TYPE_2__*,struct request*,scalar_t__,unsigned int) ;

int ide_complete_rq(ide_drive_t *drive, blk_status_t error, unsigned int nr_bytes)
{
 ide_hwif_t *hwif = drive->hwif;
 struct request *rq = hwif->rq;
 int rc;





 if (blk_noretry_request(rq) && error)
  nr_bytes = blk_rq_sectors(rq) << 9;

 rc = ide_end_rq(drive, rq, error, nr_bytes);
 if (rc == 0)
  hwif->rq = ((void*)0);

 return rc;
}
