
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {scalar_t__ pio_mask; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int XFER_PIO_0 ;
 scalar_t__ XFER_PIO_4 ;
 int fls (scalar_t__) ;
 scalar_t__ ide_find_dma_mode (TYPE_2__*,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static u8 ide_rate_filter(ide_drive_t *drive, u8 speed)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 mode = ide_find_dma_mode(drive, speed);

 if (mode == 0) {
  if (hwif->pio_mask)
   mode = fls(hwif->pio_mask) - 1 + XFER_PIO_0;
  else
   mode = XFER_PIO_4;
 }



 return min(speed, mode);
}
