
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_block {int dummy; } ;
struct dm_array_info {int dummy; } ;
struct array_block {int dummy; } ;
typedef int dm_block_t ;


 int alloc_ablock (struct dm_array_info*,size_t,int ,struct dm_block**,struct array_block**) ;
 int fill_ablock (struct dm_array_info*,struct array_block*,void const*,int ) ;
 int insert_ablock (struct dm_array_info*,unsigned int,struct dm_block*,int *) ;
 int unlock_ablock (struct dm_array_info*,struct dm_block*) ;

__attribute__((used)) static int insert_new_ablock(struct dm_array_info *info, size_t size_of_block,
        uint32_t max_entries,
        unsigned block_index, uint32_t nr,
        const void *value, dm_block_t *root)
{
 int r;
 struct dm_block *block;
 struct array_block *ab;

 r = alloc_ablock(info, size_of_block, max_entries, &block, &ab);
 if (r)
  return r;

 fill_ablock(info, ab, value, nr);
 r = insert_ablock(info, block_index, block, root);
 unlock_ablock(info, block);

 return r;
}
