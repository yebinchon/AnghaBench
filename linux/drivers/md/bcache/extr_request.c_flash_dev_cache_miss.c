
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct search {int dummy; } ;
struct btree {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int MAP_CONTINUE ;
 int MAP_DONE ;
 int bio_advance (struct bio*,unsigned int) ;
 int bio_sectors (struct bio*) ;
 int min (unsigned int,int ) ;
 int swap (int ,unsigned int) ;
 int zero_fill_bio (struct bio*) ;

__attribute__((used)) static int flash_dev_cache_miss(struct btree *b, struct search *s,
    struct bio *bio, unsigned int sectors)
{
 unsigned int bytes = min(sectors, bio_sectors(bio)) << 9;

 swap(bio->bi_iter.bi_size, bytes);
 zero_fill_bio(bio);
 swap(bio->bi_iter.bi_size, bytes);

 bio_advance(bio, bytes);

 if (!bio->bi_iter.bi_size)
  return MAP_DONE;

 return MAP_CONTINUE;
}
