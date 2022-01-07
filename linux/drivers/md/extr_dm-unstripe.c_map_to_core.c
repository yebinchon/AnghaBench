
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unstripe_c {int chunk_shift; int unstripe_width; int unstripe_offset; int chunk_size; } ;
struct dm_target {struct unstripe_c* private; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;


 int sector_div (int,int ) ;

__attribute__((used)) static sector_t map_to_core(struct dm_target *ti, struct bio *bio)
{
 struct unstripe_c *uc = ti->private;
 sector_t sector = bio->bi_iter.bi_sector;
 sector_t tmp_sector = sector;


 if (uc->chunk_shift)
  tmp_sector >>= uc->chunk_shift;
 else
  sector_div(tmp_sector, uc->chunk_size);

 sector += uc->unstripe_width * tmp_sector;


 return sector + uc->unstripe_offset;
}
