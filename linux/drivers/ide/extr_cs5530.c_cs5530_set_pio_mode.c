
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int ide_hwif_t ;
struct TYPE_3__ {size_t pio_mode; int dn; } ;
typedef TYPE_1__ ide_drive_t ;


 unsigned long CS5530_BASEREG (int *) ;
 size_t XFER_PIO_0 ;
 int ** cs5530_pio_timings ;
 int inl (unsigned long) ;
 int outl (int ,unsigned long) ;

__attribute__((used)) static void cs5530_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 unsigned long basereg = CS5530_BASEREG(hwif);
 unsigned int format = (inl(basereg + 4) >> 31) & 1;
 const u8 pio = drive->pio_mode - XFER_PIO_0;

 outl(cs5530_pio_timings[format][pio], basereg + ((drive->dn & 1)<<3));
}
