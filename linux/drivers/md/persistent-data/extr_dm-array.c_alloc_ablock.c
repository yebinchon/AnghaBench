
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct dm_block {int dummy; } ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {int tm; } ;
struct dm_array_info {TYPE_1__ value_type; TYPE_2__ btree_info; } ;
struct array_block {void* value_size; void* nr_entries; void* max_entries; } ;


 int array_validator ;
 void* cpu_to_le32 (int ) ;
 struct array_block* dm_block_data (struct dm_block*) ;
 int dm_tm_new_block (int ,int *,struct dm_block**) ;

__attribute__((used)) static int alloc_ablock(struct dm_array_info *info, size_t size_of_block,
   uint32_t max_entries,
   struct dm_block **block, struct array_block **ab)
{
 int r;

 r = dm_tm_new_block(info->btree_info.tm, &array_validator, block);
 if (r)
  return r;

 (*ab) = dm_block_data(*block);
 (*ab)->max_entries = cpu_to_le32(max_entries);
 (*ab)->nr_entries = cpu_to_le32(0);
 (*ab)->value_size = cpu_to_le32(info->value_type.size);

 return 0;
}
