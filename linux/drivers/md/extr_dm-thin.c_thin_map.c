
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int dm_target_offset (struct dm_target*,int ) ;
 int thin_bio_map (struct dm_target*,struct bio*) ;

__attribute__((used)) static int thin_map(struct dm_target *ti, struct bio *bio)
{
 bio->bi_iter.bi_sector = dm_target_offset(ti, bio->bi_iter.bi_sector);

 return thin_bio_map(ti, bio);
}
