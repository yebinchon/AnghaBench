
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct it821x_dev {scalar_t__* mwdma; int * pio; } ;
typedef int ide_hwif_t ;
struct TYPE_5__ {int dn; int * hwif; } ;
typedef TYPE_1__ ide_drive_t ;


 scalar_t__ MWDMA_OFF ;
 int ide_dma_end (TYPE_1__*) ;
 struct it821x_dev* ide_get_hwifdata (int *) ;
 int it821x_program (TYPE_1__*,int ) ;

__attribute__((used)) static int it821x_dma_end(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 struct it821x_dev *itdev = ide_get_hwifdata(hwif);
 int ret = ide_dma_end(drive);
 u8 unit = drive->dn & 1;

 if(itdev->mwdma[unit] != MWDMA_OFF)
  it821x_program(drive, itdev->pio[unit]);
 return ret;
}
