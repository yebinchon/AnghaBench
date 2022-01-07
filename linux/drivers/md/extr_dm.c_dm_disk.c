
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {struct gendisk* disk; } ;
struct gendisk {int dummy; } ;



struct gendisk *dm_disk(struct mapped_device *md)
{
 return md->disk;
}
