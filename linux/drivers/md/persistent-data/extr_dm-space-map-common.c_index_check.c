
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct disk_metadata_index {scalar_t__ csum; int padding; int blocknr; } ;
typedef scalar_t__ __le32 ;


 int DMERR_LIMIT (char*,scalar_t__,scalar_t__) ;
 int EILSEQ ;
 int ENOTBLK ;
 int INDEX_CSUM_XOR ;
 scalar_t__ cpu_to_le32 (int ) ;
 struct disk_metadata_index* dm_block_data (struct dm_block*) ;
 scalar_t__ dm_block_location (struct dm_block*) ;
 int dm_bm_checksum (int *,size_t,int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int index_check(struct dm_block_validator *v,
         struct dm_block *b,
         size_t block_size)
{
 struct disk_metadata_index *mi_le = dm_block_data(b);
 __le32 csum_disk;

 if (dm_block_location(b) != le64_to_cpu(mi_le->blocknr)) {
  DMERR_LIMIT("index_check failed: blocknr %llu != wanted %llu",
       le64_to_cpu(mi_le->blocknr), dm_block_location(b));
  return -ENOTBLK;
 }

 csum_disk = cpu_to_le32(dm_bm_checksum(&mi_le->padding,
            block_size - sizeof(__le32),
            INDEX_CSUM_XOR));
 if (csum_disk != mi_le->csum) {
  DMERR_LIMIT("index_check failed: csum %u != wanted %u",
       le32_to_cpu(csum_disk), le32_to_cpu(mi_le->csum));
  return -EILSEQ;
 }

 return 0;
}
