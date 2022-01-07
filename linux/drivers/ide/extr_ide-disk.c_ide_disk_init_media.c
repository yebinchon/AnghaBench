
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
typedef int ide_drive_t ;



__attribute__((used)) static int ide_disk_init_media(ide_drive_t *drive, struct gendisk *disk)
{
 return 0;
}
