
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int * private_data; } ;
struct device {int dummy; } ;
struct cdrom_device_info {TYPE_1__* handle; } ;
struct cdrom_info {struct cdrom_info* toc; struct gendisk* disk; TYPE_1__* drive; struct cdrom_device_info devinfo; } ;
struct TYPE_2__ {int * prep_rq; int * driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_DBG_FUNC ;
 int cdrom_info ;
 int ide_debug_log (int ,char*) ;
 int kfree (struct cdrom_info*) ;
 int put_disk (struct gendisk*) ;
 struct cdrom_info* to_ide_drv (struct device*,int ) ;
 int unregister_cdrom (struct cdrom_device_info*) ;

__attribute__((used)) static void ide_cd_release(struct device *dev)
{
 struct cdrom_info *info = to_ide_drv(dev, cdrom_info);
 struct cdrom_device_info *devinfo = &info->devinfo;
 ide_drive_t *drive = info->drive;
 struct gendisk *g = info->disk;

 ide_debug_log(IDE_DBG_FUNC, "enter");

 kfree(info->toc);
 if (devinfo->handle == drive)
  unregister_cdrom(devinfo);
 drive->driver_data = ((void*)0);
 drive->prep_rq = ((void*)0);
 g->private_data = ((void*)0);
 put_disk(g);
 kfree(info);
}
