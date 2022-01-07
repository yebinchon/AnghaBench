
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_disk_superblock {scalar_t__ csum; int flags; int magic; int blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef scalar_t__ __le32 ;


 int DMERR (char*,unsigned long long,unsigned long long) ;
 int EILSEQ ;
 int ENOTBLK ;
 int SUPERBLOCK_CSUM_XOR ;
 scalar_t__ THIN_SUPERBLOCK_MAGIC ;
 scalar_t__ cpu_to_le32 (int ) ;
 struct thin_disk_superblock* dm_block_data (struct dm_block*) ;
 scalar_t__ dm_block_location (struct dm_block*) ;
 int dm_bm_checksum (int *,size_t,int ) ;
 unsigned long long le32_to_cpu (scalar_t__) ;
 unsigned long long le64_to_cpu (int ) ;

__attribute__((used)) static int sb_check(struct dm_block_validator *v,
      struct dm_block *b,
      size_t block_size)
{
 struct thin_disk_superblock *disk_super = dm_block_data(b);
 __le32 csum_le;

 if (dm_block_location(b) != le64_to_cpu(disk_super->blocknr)) {
  DMERR("sb_check failed: blocknr %llu: "
        "wanted %llu", le64_to_cpu(disk_super->blocknr),
        (unsigned long long)dm_block_location(b));
  return -ENOTBLK;
 }

 if (le64_to_cpu(disk_super->magic) != THIN_SUPERBLOCK_MAGIC) {
  DMERR("sb_check failed: magic %llu: "
        "wanted %llu", le64_to_cpu(disk_super->magic),
        (unsigned long long)THIN_SUPERBLOCK_MAGIC);
  return -EILSEQ;
 }

 csum_le = cpu_to_le32(dm_bm_checksum(&disk_super->flags,
          block_size - sizeof(__le32),
          SUPERBLOCK_CSUM_XOR));
 if (csum_le != disk_super->csum) {
  DMERR("sb_check failed: csum %u: wanted %u",
        le32_to_cpu(csum_le), le32_to_cpu(disk_super->csum));
  return -EILSEQ;
 }

 return 0;
}
