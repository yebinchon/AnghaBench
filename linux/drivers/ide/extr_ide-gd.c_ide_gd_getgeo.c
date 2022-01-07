
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ide_disk_obj {TYPE_1__* drive; } ;
struct hd_geometry {scalar_t__ cylinders; int sectors; int heads; } ;
struct block_device {int bd_disk; } ;
struct TYPE_2__ {scalar_t__ bios_cyl; int bios_sect; int bios_head; } ;
typedef TYPE_1__ ide_drive_t ;


 int ide_disk_obj ;
 struct ide_disk_obj* ide_drv_g (int ,int ) ;

__attribute__((used)) static int ide_gd_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct ide_disk_obj *idkp = ide_drv_g(bdev->bd_disk, ide_disk_obj);
 ide_drive_t *drive = idkp->drive;

 geo->heads = drive->bios_head;
 geo->sectors = drive->bios_sect;
 geo->cylinders = (u16)drive->bios_cyl;
 return 0;
}
