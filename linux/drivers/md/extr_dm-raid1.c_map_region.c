
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror {TYPE_1__* dev; } ;
struct dm_io_region {int count; int sector; int bdev; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int bdev; } ;


 int bio_sectors (struct bio*) ;
 int map_sector (struct mirror*,struct bio*) ;

__attribute__((used)) static void map_region(struct dm_io_region *io, struct mirror *m,
         struct bio *bio)
{
 io->bdev = m->dev->bdev;
 io->sector = map_sector(m, bio);
 io->count = bio_sectors(bio);
}
