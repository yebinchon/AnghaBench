
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct era {int sectors_per_block_shift; int sectors_per_block; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;
typedef int dm_block_t ;


 int block_size_is_power_of_two (struct era*) ;
 int sector_div (int,int ) ;

__attribute__((used)) static dm_block_t get_block(struct era *era, struct bio *bio)
{
 sector_t block_nr = bio->bi_iter.bi_sector;

 if (!block_size_is_power_of_two(era))
  (void) sector_div(block_nr, era->sectors_per_block);
 else
  block_nr >>= era->sectors_per_block_shift;

 return block_nr;
}
