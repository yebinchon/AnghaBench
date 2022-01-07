
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* port_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_10__ {int pio_mode; int dma_mode; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_8__ {int (* set_dma_mode ) (TYPE_2__*,TYPE_3__*) ;} ;


 int stub1 (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void aec_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 drive->dma_mode = drive->pio_mode;
 hwif->port_ops->set_dma_mode(hwif, drive);
}
