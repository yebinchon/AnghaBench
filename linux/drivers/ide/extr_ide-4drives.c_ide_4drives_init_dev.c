
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int select; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {scalar_t__ channel; } ;



__attribute__((used)) static void ide_4drives_init_dev(ide_drive_t *drive)
{
 if (drive->hwif->channel)
  drive->select ^= 0x20;
}
