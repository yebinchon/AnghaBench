
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cdrom_info {int dev; int disk; int driver; } ;
struct TYPE_4__ {struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_DBG_FUNC ;
 int del_gendisk (int ) ;
 int device_del (int *) ;
 int ide_debug_log (int ,char*) ;
 int ide_proc_unregister_driver (TYPE_1__*,int ) ;
 int idecd_ref_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void ide_cd_remove(ide_drive_t *drive)
{
 struct cdrom_info *info = drive->driver_data;

 ide_debug_log(IDE_DBG_FUNC, "enter");

 ide_proc_unregister_driver(drive, info->driver);
 device_del(&info->dev);
 del_gendisk(info->disk);

 mutex_lock(&idecd_ref_mutex);
 put_device(&info->dev);
 mutex_unlock(&idecd_ref_mutex);
}
