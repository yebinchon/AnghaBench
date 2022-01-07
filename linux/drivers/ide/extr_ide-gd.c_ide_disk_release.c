
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ide_disk_obj {struct gendisk* disk; TYPE_1__* drive; } ;
struct gendisk {int * private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * driver_data; int * disk_ops; } ;
typedef TYPE_1__ ide_drive_t ;


 int ide_disk_obj ;
 int kfree (struct ide_disk_obj*) ;
 int put_disk (struct gendisk*) ;
 struct ide_disk_obj* to_ide_drv (struct device*,int ) ;

__attribute__((used)) static void ide_disk_release(struct device *dev)
{
 struct ide_disk_obj *idkp = to_ide_drv(dev, ide_disk_obj);
 ide_drive_t *drive = idkp->drive;
 struct gendisk *g = idkp->disk;

 drive->disk_ops = ((void*)0);
 drive->driver_data = ((void*)0);
 g->private_data = ((void*)0);
 put_disk(g);
 kfree(idkp);
}
