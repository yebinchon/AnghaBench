
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ide_hwif_t ;
struct TYPE_4__ {int dma_mode; } ;
typedef TYPE_1__ ide_drive_t ;


 int cs5535_set_speed (TYPE_1__*,int ) ;

__attribute__((used)) static void cs5535_set_dma_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 cs5535_set_speed(drive, drive->dma_mode);
}
