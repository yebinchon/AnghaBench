
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ide_hwif_t ;
struct TYPE_4__ {int pio_mode; int dma_mode; } ;
typedef TYPE_1__ ide_drive_t ;


 int amd_set_drive (int *,TYPE_1__*) ;

__attribute__((used)) static void amd_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 drive->dma_mode = drive->pio_mode;
 amd_set_drive(hwif, drive);
}
