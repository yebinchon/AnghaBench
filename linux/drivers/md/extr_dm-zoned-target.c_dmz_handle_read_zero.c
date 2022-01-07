
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_target {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;


 unsigned int DMZ_BLOCK_SHIFT ;
 int bio_advance (struct bio*,unsigned int) ;
 int swap (int ,unsigned int) ;
 int zero_fill_bio (struct bio*) ;

__attribute__((used)) static void dmz_handle_read_zero(struct dmz_target *dmz, struct bio *bio,
     sector_t chunk_block, unsigned int nr_blocks)
{
 unsigned int size = nr_blocks << DMZ_BLOCK_SHIFT;


 swap(bio->bi_iter.bi_size, size);
 zero_fill_bio(bio);
 swap(bio->bi_iter.bi_size, size);

 bio_advance(bio, size);
}
