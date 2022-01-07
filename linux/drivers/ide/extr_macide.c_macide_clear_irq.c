
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_drive_t ;


 int* ide_ifr ;

__attribute__((used)) static void macide_clear_irq(ide_drive_t *drive)
{
 *ide_ifr &= ~0x20;
}
