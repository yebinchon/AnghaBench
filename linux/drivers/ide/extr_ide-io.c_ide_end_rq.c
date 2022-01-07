
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_4__ {int dev_flags; int retry_pio; int sense_rq_active; struct request* sense_rq; } ;
typedef TYPE_1__ ide_drive_t ;
typedef int blk_status_t ;


 int IDE_DFLAG_DMA_PIO_RETRY ;
 int __blk_mq_end_request (struct request*,int ) ;
 int blk_update_request (struct request*,int ,unsigned int) ;
 int ide_dma_on (TYPE_1__*) ;

int ide_end_rq(ide_drive_t *drive, struct request *rq, blk_status_t error,
        unsigned int nr_bytes)
{




 if ((drive->dev_flags & IDE_DFLAG_DMA_PIO_RETRY) &&
     drive->retry_pio <= 3) {
  drive->dev_flags &= ~IDE_DFLAG_DMA_PIO_RETRY;
  ide_dma_on(drive);
 }

 if (!blk_update_request(rq, error, nr_bytes)) {
  if (rq == drive->sense_rq) {
   drive->sense_rq = ((void*)0);
   drive->sense_rq_active = 0;
  }

  __blk_mq_end_request(rq, error);
  return 0;
 }

 return 1;
}
