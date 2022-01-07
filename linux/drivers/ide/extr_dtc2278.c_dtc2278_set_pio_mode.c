
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ide_hwif_t ;
struct TYPE_3__ {scalar_t__ pio_mode; } ;
typedef TYPE_1__ ide_drive_t ;


 scalar_t__ XFER_PIO_3 ;
 int dtc2278_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sub22 (int,int) ;

__attribute__((used)) static void dtc2278_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 unsigned long flags;

 if (drive->pio_mode >= XFER_PIO_3) {
  spin_lock_irqsave(&dtc2278_lock, flags);



  sub22(1,0xc3);
  sub22(0,0xa0);
  spin_unlock_irqrestore(&dtc2278_lock, flags);
 } else {



 }
}
