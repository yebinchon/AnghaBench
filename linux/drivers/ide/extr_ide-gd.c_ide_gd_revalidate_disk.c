
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ide_disk_obj {TYPE_2__* drive; } ;
struct gendisk {int dummy; } ;
struct TYPE_6__ {TYPE_1__* disk_ops; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_5__ {int (* get_capacity ) (TYPE_2__*) ;} ;


 int ide_disk_obj ;
 struct ide_disk_obj* ide_drv_g (struct gendisk*,int ) ;
 int ide_gd_capacity (TYPE_2__*) ;
 scalar_t__ ide_gd_check_events (struct gendisk*,int ) ;
 int set_capacity (struct gendisk*,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int ide_gd_revalidate_disk(struct gendisk *disk)
{
 struct ide_disk_obj *idkp = ide_drv_g(disk, ide_disk_obj);
 ide_drive_t *drive = idkp->drive;

 if (ide_gd_check_events(disk, 0))
  drive->disk_ops->get_capacity(drive);

 set_capacity(disk, ide_gd_capacity(drive));
 return 0;
}
