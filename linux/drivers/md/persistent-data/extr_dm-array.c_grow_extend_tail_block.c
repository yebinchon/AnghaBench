
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct resize {int info; int value; int old_nr_full_blocks; int root; } ;
struct dm_block {int dummy; } ;
struct array_block {int dummy; } ;


 int fill_ablock (int ,struct array_block*,int ,int ) ;
 int shadow_ablock (int ,int *,int ,struct dm_block**,struct array_block**) ;
 int unlock_ablock (int ,struct dm_block*) ;

__attribute__((used)) static int grow_extend_tail_block(struct resize *resize, uint32_t new_nr_entries)
{
 int r;
 struct dm_block *block;
 struct array_block *ab;

 r = shadow_ablock(resize->info, &resize->root,
     resize->old_nr_full_blocks, &block, &ab);
 if (r)
  return r;

 fill_ablock(resize->info, ab, resize->value, new_nr_entries);
 unlock_ablock(resize->info, block);

 return r;
}
