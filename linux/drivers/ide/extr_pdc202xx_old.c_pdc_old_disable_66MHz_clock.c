
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int extra_base; scalar_t__ channel; } ;
typedef TYPE_1__ ide_hwif_t ;


 int inb (unsigned long) ;
 int outb (int,unsigned long) ;

__attribute__((used)) static void pdc_old_disable_66MHz_clock(ide_hwif_t *hwif)
{
 unsigned long clock_reg = hwif->extra_base + 0x01;
 u8 clock = inb(clock_reg);

 outb(clock & ~(hwif->channel ? 0x08 : 0x02), clock_reg);
}
