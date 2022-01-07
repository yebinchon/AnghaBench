
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct cdrom_info {int drive; } ;


 int cdrom_info ;
 int ide_cd_read_toc (int ) ;
 struct cdrom_info* ide_drv_g (struct gendisk*,int ) ;

__attribute__((used)) static int idecd_revalidate_disk(struct gendisk *disk)
{
 struct cdrom_info *info = ide_drv_g(disk, cdrom_info);

 ide_cd_read_toc(info->drive);

 return 0;
}
