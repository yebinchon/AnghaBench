
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resize {scalar_t__ new_nr_full_blocks; scalar_t__ old_nr_full_blocks; int info; int new_nr_entries_in_last_block; int root; int old_nr_entries_in_last_block; } ;
struct dm_block {int dummy; } ;
struct array_block {int dummy; } ;


 int drop_blocks (struct resize*,unsigned int,unsigned int) ;
 int shadow_ablock (int ,int *,scalar_t__,struct dm_block**,struct array_block**) ;
 unsigned int total_nr_blocks_needed (scalar_t__,int ) ;
 int trim_ablock (int ,struct array_block*,int ) ;
 int unlock_ablock (int ,struct dm_block*) ;

__attribute__((used)) static int shrink(struct resize *resize)
{
 int r;
 unsigned begin, end;
 struct dm_block *block;
 struct array_block *ab;




 if (resize->new_nr_full_blocks < resize->old_nr_full_blocks) {
  begin = total_nr_blocks_needed(resize->new_nr_full_blocks,
            resize->new_nr_entries_in_last_block);
  end = total_nr_blocks_needed(resize->old_nr_full_blocks,
          resize->old_nr_entries_in_last_block);

  r = drop_blocks(resize, begin, end);
  if (r)
   return r;
 }




 if (resize->new_nr_entries_in_last_block) {
  r = shadow_ablock(resize->info, &resize->root,
      resize->new_nr_full_blocks, &block, &ab);
  if (r)
   return r;

  trim_ablock(resize->info, ab, resize->new_nr_entries_in_last_block);
  unlock_ablock(resize->info, block);
 }

 return 0;
}
