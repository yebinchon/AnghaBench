
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct array_block {scalar_t__ csum; int max_entries; int blocknr; } ;
typedef scalar_t__ __le32 ;


 int CSUM_XOR ;
 int DMERR_LIMIT (char*,unsigned int,unsigned int) ;
 int EILSEQ ;
 int ENOTBLK ;
 scalar_t__ cpu_to_le32 (int ) ;
 struct array_block* dm_block_data (struct dm_block*) ;
 scalar_t__ dm_block_location (struct dm_block*) ;
 int dm_bm_checksum (int *,size_t,int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int array_block_check(struct dm_block_validator *v,
        struct dm_block *b,
        size_t size_of_block)
{
 struct array_block *bh_le = dm_block_data(b);
 __le32 csum_disk;

 if (dm_block_location(b) != le64_to_cpu(bh_le->blocknr)) {
  DMERR_LIMIT("array_block_check failed: blocknr %llu != wanted %llu",
       (unsigned long long) le64_to_cpu(bh_le->blocknr),
       (unsigned long long) dm_block_location(b));
  return -ENOTBLK;
 }

 csum_disk = cpu_to_le32(dm_bm_checksum(&bh_le->max_entries,
            size_of_block - sizeof(__le32),
            CSUM_XOR));
 if (csum_disk != bh_le->csum) {
  DMERR_LIMIT("array_block_check failed: csum %u != wanted %u",
       (unsigned) le32_to_cpu(csum_disk),
       (unsigned) le32_to_cpu(bh_le->csum));
  return -EILSEQ;
 }

 return 0;
}
