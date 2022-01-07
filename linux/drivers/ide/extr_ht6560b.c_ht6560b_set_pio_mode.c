
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int ide_hwif_t ;
struct TYPE_7__ {int pio_mode; int name; } ;
typedef TYPE_1__ ide_drive_t ;


 int XFER_PIO_0 ;
 int ht6560b_lock ;
 int ht_pio2timings (TYPE_1__*,int const) ;
 int ht_set_prefetch (TYPE_1__*,int const) ;
 scalar_t__ ide_get_drivedata (TYPE_1__*) ;
 int ide_set_drivedata (TYPE_1__*,void*) ;
 int printk (char*,int ,int const,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ht6560b_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 unsigned long flags, config;
 const u8 pio = drive->pio_mode - XFER_PIO_0;
 u8 timing;

 switch (pio) {
 case 8:
 case 9:
  ht_set_prefetch(drive, pio & 1);
  return;
 }

 timing = ht_pio2timings(drive, pio);

 spin_lock_irqsave(&ht6560b_lock, flags);
 config = (unsigned long)ide_get_drivedata(drive);
 config &= 0xff00;
 config |= timing;
 ide_set_drivedata(drive, (void *)config);
 spin_unlock_irqrestore(&ht6560b_lock, flags);




}
