
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int dummy; } ;
struct dm_block {int dummy; } ;
typedef scalar_t__ __le64 ;


 int BUG_ON (int) ;
 int DMERR (char*) ;
 int SUPERBLOCK_LOCATION ;
 scalar_t__ cpu_to_le64 (int ) ;
 scalar_t__* dm_block_data (struct dm_block*) ;
 int dm_bm_block_size (struct dm_block_manager*) ;
 int dm_bm_read_lock (struct dm_block_manager*,int ,int *,struct dm_block**) ;
 int dm_bm_unlock (struct dm_block*) ;

__attribute__((used)) static int __superblock_all_zeroes(struct dm_block_manager *bm, bool *formatted)
{
 int r;
 unsigned int i, nr_words;
 struct dm_block *sblock;
 __le64 *data_le, zero = cpu_to_le64(0);





 r = dm_bm_read_lock(bm, SUPERBLOCK_LOCATION, ((void*)0), &sblock);
 if (r) {
  DMERR("Failed to read_lock superblock");
  return r;
 }

 data_le = dm_block_data(sblock);
 *formatted = 0;


 BUG_ON(dm_bm_block_size(bm) % sizeof(__le64));
 nr_words = dm_bm_block_size(bm) / sizeof(__le64);
 for (i = 0; i < nr_words; i++) {
  if (data_le[i] != zero) {
   *formatted = 1;
   break;
  }
 }

 dm_bm_unlock(sblock);

 return 0;
}
