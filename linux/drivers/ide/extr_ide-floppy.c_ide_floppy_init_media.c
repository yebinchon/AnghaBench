
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
typedef int ide_drive_t ;


 int ide_do_start_stop (int *,struct gendisk*,int) ;
 scalar_t__ ide_do_test_unit_ready (int *,struct gendisk*) ;
 int ide_floppy_get_capacity (int *) ;
 int ide_gd_capacity (int *) ;
 int set_capacity (struct gendisk*,int ) ;

__attribute__((used)) static int ide_floppy_init_media(ide_drive_t *drive, struct gendisk *disk)
{
 int ret = 0;

 if (ide_do_test_unit_ready(drive, disk))
  ide_do_start_stop(drive, disk, 1);

 ret = ide_floppy_get_capacity(drive);

 set_capacity(disk, ide_gd_capacity(drive));

 return ret;
}
