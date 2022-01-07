
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int minors; int first_minor; int major; } ;


 int MKDEV (int ,int ) ;
 int blk_register_region (int ,int ,int *,int ,int ,struct gendisk*) ;
 int exact_lock ;
 int exact_match ;

void ide_register_region(struct gendisk *disk)
{
 blk_register_region(MKDEV(disk->major, disk->first_minor),
       disk->minors, ((void*)0), exact_match, exact_lock, disk);
}
