
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cdrom_device_info {int capacity; int disk; int mask; int name; TYPE_1__* handle; int speed; int * ops; } ;
struct cdrom_info {int disk; int current_speed; struct cdrom_device_info devinfo; } ;
struct TYPE_3__ {int atapi_flags; int name; struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int CDC_SELECT_SPEED ;
 int IDE_AFLAG_NO_SPEED_SELECT ;
 int IDE_DBG_PROBE ;
 int ide_cdrom_dops ;
 int ide_debug_log (int ,char*,int) ;
 int register_cdrom (struct cdrom_device_info*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int ide_cdrom_register(ide_drive_t *drive, int nslots)
{
 struct cdrom_info *info = drive->driver_data;
 struct cdrom_device_info *devinfo = &info->devinfo;

 ide_debug_log(IDE_DBG_PROBE, "nslots: %d", nslots);

 devinfo->ops = &ide_cdrom_dops;
 devinfo->speed = info->current_speed;
 devinfo->capacity = nslots;
 devinfo->handle = drive;
 strcpy(devinfo->name, drive->name);

 if (drive->atapi_flags & IDE_AFLAG_NO_SPEED_SELECT)
  devinfo->mask |= CDC_SELECT_SPEED;

 devinfo->disk = info->disk;
 return register_cdrom(devinfo);
}
