
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* hwif; int dev_flags; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_7__ {TYPE_1__* dma_ops; } ;
struct TYPE_6__ {int (* dma_host_set ) (TYPE_3__*,int) ;} ;


 int IDE_DFLAG_USING_DMA ;
 int stub1 (TYPE_3__*,int) ;

void ide_dma_on(ide_drive_t *drive)
{
 drive->dev_flags |= IDE_DFLAG_USING_DMA;

 drive->hwif->dma_ops->dma_host_set(drive, 1);
}
