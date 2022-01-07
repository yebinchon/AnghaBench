
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;


 int blk_get_integrity (struct gendisk*) ;

__attribute__((used)) static bool integrity_profile_exists(struct gendisk *disk)
{
 return !!blk_get_integrity(disk);
}
