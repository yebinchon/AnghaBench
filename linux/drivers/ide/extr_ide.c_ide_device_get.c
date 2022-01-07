
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct module {int dummy; } ;
struct device {TYPE_3__* driver; } ;
struct TYPE_9__ {int gendev; TYPE_2__* hwif; } ;
typedef TYPE_4__ ide_drive_t ;
struct TYPE_8__ {struct module* owner; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {struct device** dev; } ;


 int ENXIO ;
 int get_device (int *) ;
 int put_device (int *) ;
 int try_module_get (struct module*) ;

int ide_device_get(ide_drive_t *drive)
{
 struct device *host_dev;
 struct module *module;

 if (!get_device(&drive->gendev))
  return -ENXIO;

 host_dev = drive->hwif->host->dev[0];
 module = host_dev ? host_dev->driver->owner : ((void*)0);

 if (module && !try_module_get(module)) {
  put_device(&drive->gendev);
  return -ENXIO;
 }

 return 0;
}
