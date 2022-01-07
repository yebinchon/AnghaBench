
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct walk_info {int (* fn ) (int ,unsigned int,int ) ;int info; int context; } ;
struct dm_block {int dummy; } ;
struct array_block {int nr_entries; int max_entries; } ;
typedef int block_le ;
typedef int __le64 ;


 int element_at (int ,struct array_block*,unsigned int) ;
 int get_ablock (int ,int ,struct dm_block**,struct array_block**) ;
 unsigned int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,void*,int) ;
 int stub1 (int ,unsigned int,int ) ;
 int unlock_ablock (int ,struct dm_block*) ;

__attribute__((used)) static int walk_ablock(void *context, uint64_t *keys, void *leaf)
{
 struct walk_info *wi = context;

 int r;
 unsigned i;
 __le64 block_le;
 unsigned nr_entries, max_entries;
 struct dm_block *block;
 struct array_block *ab;

 memcpy(&block_le, leaf, sizeof(block_le));
 r = get_ablock(wi->info, le64_to_cpu(block_le), &block, &ab);
 if (r)
  return r;

 max_entries = le32_to_cpu(ab->max_entries);
 nr_entries = le32_to_cpu(ab->nr_entries);
 for (i = 0; i < nr_entries; i++) {
  r = wi->fn(wi->context, keys[0] * max_entries + i,
      element_at(wi->info, ab, i));

  if (r)
   break;
 }

 unlock_ablock(wi->info, block);
 return r;
}
