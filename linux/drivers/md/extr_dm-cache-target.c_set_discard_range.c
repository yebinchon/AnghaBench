
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct discard_load_info {int discard_begin; int discard_end; int block_size; TYPE_1__* cache; } ;
typedef int sector_t ;
struct TYPE_2__ {int discard_nr_blocks; int discard_block_size; } ;


 int dm_sector_div_up (int,int ) ;
 int from_dblock (int ) ;
 int sector_div (int,int ) ;
 int set_discard (TYPE_1__*,int ) ;
 int to_dblock (int) ;

__attribute__((used)) static void set_discard_range(struct discard_load_info *li)
{
 sector_t b, e;

 if (li->discard_begin == li->discard_end)
  return;




 b = li->discard_begin * li->block_size;
 e = li->discard_end * li->block_size;




 b = dm_sector_div_up(b, li->cache->discard_block_size);
 sector_div(e, li->cache->discard_block_size);





 if (e > from_dblock(li->cache->discard_nr_blocks))
  e = from_dblock(li->cache->discard_nr_blocks);

 for (; b < e; b++)
  set_discard(li->cache, to_dblock(b));
}
