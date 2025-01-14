
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct ide_timing {int active; } ;
typedef int ide_drive_t ;


 unsigned int XFER_PIO_0 ;
 int ide_pio_cycle_time (int *,unsigned int) ;
 scalar_t__ ide_pio_need_iordy (int *,unsigned int) ;
 struct ide_timing* ide_timing_find_mode (unsigned int) ;

__attribute__((used)) static unsigned int get_pio_timings(ide_drive_t *drive, u8 pio)
{
 struct ide_timing *t = ide_timing_find_mode(XFER_PIO_0 + pio);
 unsigned int cmd_on, cmd_off;
 u8 iordy = 0;

 cmd_on = (t->active + 29) / 30;
 cmd_off = (ide_pio_cycle_time(drive, pio) - 30 * cmd_on + 29) / 30;

 if (cmd_on == 0)
  cmd_on = 1;

 if (cmd_off == 0)
  cmd_off = 1;

 if (ide_pio_need_iordy(drive, pio))
  iordy = 0x40;

 return (cmd_on - 1) << 8 | (cmd_off - 1) | iordy;
}
