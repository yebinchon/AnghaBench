
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int dummy; } ;
struct dm_block {int dummy; } ;
typedef scalar_t__ __le64 ;


 int SUPERBLOCK_LOCATION ;
 scalar_t__ cpu_to_le64 (int ) ;
 scalar_t__* dm_block_data (struct dm_block*) ;
 int dm_bm_block_size (struct dm_block_manager*) ;
 int dm_bm_read_lock (struct dm_block_manager*,int ,int *,struct dm_block**) ;
 int dm_bm_unlock (struct dm_block*) ;

__attribute__((used)) static int superblock_all_zeroes(struct dm_block_manager *bm, bool *result)
{
 int r;
 unsigned i;
 struct dm_block *b;
 __le64 *data_le, zero = cpu_to_le64(0);
 unsigned sb_block_size = dm_bm_block_size(bm) / sizeof(__le64);




 r = dm_bm_read_lock(bm, SUPERBLOCK_LOCATION, ((void*)0), &b);
 if (r)
  return r;

 data_le = dm_block_data(b);
 *result = 1;
 for (i = 0; i < sb_block_size; i++) {
  if (data_le[i] != zero) {
   *result = 0;
   break;
  }
 }

 dm_bm_unlock(b);

 return 0;
}
