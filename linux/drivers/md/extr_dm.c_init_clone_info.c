
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int dummy; } ;
struct dm_table {int dummy; } ;
struct clone_info {int sector; int io; struct dm_table* map; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int alloc_io (struct mapped_device*,struct bio*) ;

__attribute__((used)) static void init_clone_info(struct clone_info *ci, struct mapped_device *md,
       struct dm_table *map, struct bio *bio)
{
 ci->map = map;
 ci->io = alloc_io(md, bio);
 ci->sector = bio->bi_iter.bi_sector;
}
