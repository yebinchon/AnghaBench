
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int ide_hwif_t ;
struct TYPE_4__ {int pio_mode; } ;
typedef TYPE_1__ ide_drive_t ;


 int XFER_PIO_0 ;
 int cmd64x_program_timings (TYPE_1__*,int) ;

__attribute__((used)) static void cmd64x_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 const u8 pio = drive->pio_mode - XFER_PIO_0;





 if (pio == 8 || pio == 9)
  return;

 cmd64x_program_timings(drive, XFER_PIO_0 + pio);
}
