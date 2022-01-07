
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ide_disk_obj {TYPE_2__* drive; } ;
struct block_device {int bd_disk; } ;
struct TYPE_5__ {TYPE_1__* disk_ops; } ;
typedef TYPE_2__ ide_drive_t ;
typedef int fmode_t ;
struct TYPE_4__ {int (* ioctl ) (TYPE_2__*,struct block_device*,int ,unsigned int,unsigned long) ;} ;


 int ide_disk_obj ;
 struct ide_disk_obj* ide_drv_g (int ,int ) ;
 int stub1 (TYPE_2__*,struct block_device*,int ,unsigned int,unsigned long) ;

__attribute__((used)) static int ide_gd_ioctl(struct block_device *bdev, fmode_t mode,
        unsigned int cmd, unsigned long arg)
{
 struct ide_disk_obj *idkp = ide_drv_g(bdev->bd_disk, ide_disk_obj);
 ide_drive_t *drive = idkp->drive;

 return drive->disk_ops->ioctl(drive, bdev, mode, cmd, arg);
}
