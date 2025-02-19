
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct dm_block {int dummy; } ;
struct TYPE_2__ {int tm; } ;
struct dm_array_info {TYPE_1__ btree_info; } ;
struct array_block {int dummy; } ;
typedef int block_le ;
typedef int __le64 ;


 int DMERR_LIMIT (char*,unsigned long long) ;
 int dec_ablock_entries (struct dm_array_info*,struct array_block*) ;
 int dm_tm_dec (int ,scalar_t__) ;
 int dm_tm_ref (int ,scalar_t__,int*) ;
 int get_ablock (struct dm_array_info*,scalar_t__,struct dm_block**,struct array_block**) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memcpy (int *,void const*,int) ;
 int unlock_ablock (struct dm_array_info*,struct dm_block*) ;

__attribute__((used)) static void block_dec(void *context, const void *value)
{
 int r;
 uint64_t b;
 __le64 block_le;
 uint32_t ref_count;
 struct dm_block *block;
 struct array_block *ab;
 struct dm_array_info *info = context;

 memcpy(&block_le, value, sizeof(block_le));
 b = le64_to_cpu(block_le);

 r = dm_tm_ref(info->btree_info.tm, b, &ref_count);
 if (r) {
  DMERR_LIMIT("couldn't get reference count for block %llu",
       (unsigned long long) b);
  return;
 }

 if (ref_count == 1) {




  r = get_ablock(info, b, &block, &ab);
  if (r) {
   DMERR_LIMIT("couldn't get array block %llu",
        (unsigned long long) b);
   return;
  }

  dec_ablock_entries(info, ab);
  unlock_ablock(info, block);
 }

 dm_tm_dec(info->btree_info.tm, b);
}
