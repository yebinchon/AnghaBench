
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_3__ {TYPE_2__** devices; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_4__ {int dev_flags; scalar_t__ media; } ;
typedef TYPE_2__ ide_drive_t ;
typedef int dev_t ;


 int IDE_DFLAG_PRESENT ;
 int PARTN_BITS ;
 scalar_t__ ide_cdrom ;
 scalar_t__ ide_disk ;
 scalar_t__ ide_floppy ;
 scalar_t__ ide_optical ;
 scalar_t__ ide_tape ;
 int request_module (char*) ;

__attribute__((used)) static struct kobject *ata_probe(dev_t dev, int *part, void *data)
{
 ide_hwif_t *hwif = data;
 int unit = *part >> PARTN_BITS;
 ide_drive_t *drive = hwif->devices[unit];

 if ((drive->dev_flags & IDE_DFLAG_PRESENT) == 0)
  return ((void*)0);

 if (drive->media == ide_disk)
  request_module("ide-disk");
 if (drive->media == ide_cdrom || drive->media == ide_optical)
  request_module("ide-cd");
 if (drive->media == ide_tape)
  request_module("ide-tape");
 if (drive->media == ide_floppy)
  request_module("ide-floppy");

 return ((void*)0);
}
