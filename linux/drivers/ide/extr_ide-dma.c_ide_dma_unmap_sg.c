
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ide_cmd {int sg_dma_direction; int orig_sg_nents; } ;
struct TYPE_4__ {int sg_table; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int dma_unmap_sg (int ,int ,int ,int ) ;

void ide_dma_unmap_sg(ide_drive_t *drive, struct ide_cmd *cmd)
{
 ide_hwif_t *hwif = drive->hwif;

 dma_unmap_sg(hwif->dev, hwif->sg_table, cmd->orig_sg_nents,
       cmd->sg_dma_direction);
}
