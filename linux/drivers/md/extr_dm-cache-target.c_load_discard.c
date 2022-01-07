
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discard_load_info {scalar_t__ discard_end; scalar_t__ discard_begin; int block_size; } ;
typedef int sector_t ;
typedef int dm_dblock_t ;


 scalar_t__ from_dblock (int ) ;
 int set_discard_range (struct discard_load_info*) ;

__attribute__((used)) static int load_discard(void *context, sector_t discard_block_size,
   dm_dblock_t dblock, bool discard)
{
 struct discard_load_info *li = context;

 li->block_size = discard_block_size;

 if (discard) {
  if (from_dblock(dblock) == li->discard_end)



   li->discard_end = li->discard_end + 1ULL;

  else {



   set_discard_range(li);
   li->discard_begin = from_dblock(dblock);
   li->discard_end = li->discard_begin + 1ULL;
  }
 } else {
  set_discard_range(li);
  li->discard_begin = li->discard_end = 0;
 }

 return 0;
}
