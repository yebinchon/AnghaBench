
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; int disk; int driver; } ;
typedef TYPE_1__ idetape_tape_t ;
struct TYPE_6__ {TYPE_1__* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 int device_del (int *) ;
 int ide_proc_unregister_driver (TYPE_2__*,int ) ;
 int ide_unregister_region (int ) ;
 int idetape_ref_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void ide_tape_remove(ide_drive_t *drive)
{
 idetape_tape_t *tape = drive->driver_data;

 ide_proc_unregister_driver(drive, tape->driver);
 device_del(&tape->dev);
 ide_unregister_region(tape->disk);

 mutex_lock(&idetape_ref_mutex);
 put_device(&tape->dev);
 mutex_unlock(&idetape_ref_mutex);
}
