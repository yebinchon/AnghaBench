
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clone {unsigned long region_shift; int region_size; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;


 unsigned long bio_end_sector (struct bio*) ;
 unsigned long dm_sector_div_up (int ,int ) ;

__attribute__((used)) static void bio_region_range(struct clone *clone, struct bio *bio,
        unsigned long *rs, unsigned long *re)
{
 *rs = dm_sector_div_up(bio->bi_iter.bi_sector, clone->region_size);
 *re = bio_end_sector(bio) >> clone->region_shift;
}
