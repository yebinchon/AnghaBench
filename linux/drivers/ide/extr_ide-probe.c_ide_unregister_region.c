
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int minors; int first_minor; int major; } ;


 int MKDEV (int ,int ) ;
 int blk_unregister_region (int ,int ) ;

void ide_unregister_region(struct gendisk *disk)
{
 blk_unregister_region(MKDEV(disk->major, disk->first_minor),
         disk->minors);
}
