
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_disk {scalar_t__ csum; int flags; int magic; int blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef scalar_t__ __le32 ;


 int DMERR (char*,unsigned long long,unsigned long long) ;
 int EILSEQ ;
 int ENOTBLK ;
 int SUPERBLOCK_CSUM_XOR ;
 scalar_t__ SUPERBLOCK_MAGIC ;
 int check_metadata_version (struct superblock_disk*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 struct superblock_disk* dm_block_data (struct dm_block*) ;
 scalar_t__ dm_block_location (struct dm_block*) ;
 int dm_bm_checksum (int *,size_t,int ) ;
 unsigned long long le32_to_cpu (scalar_t__) ;
 unsigned long long le64_to_cpu (int ) ;

__attribute__((used)) static int sb_check(struct dm_block_validator *v,
      struct dm_block *b,
      size_t sb_block_size)
{
 struct superblock_disk *disk = dm_block_data(b);
 __le32 csum_le;

 if (dm_block_location(b) != le64_to_cpu(disk->blocknr)) {
  DMERR("sb_check failed: blocknr %llu: wanted %llu",
        le64_to_cpu(disk->blocknr),
        (unsigned long long)dm_block_location(b));
  return -ENOTBLK;
 }

 if (le64_to_cpu(disk->magic) != SUPERBLOCK_MAGIC) {
  DMERR("sb_check failed: magic %llu: wanted %llu",
        le64_to_cpu(disk->magic),
        (unsigned long long) SUPERBLOCK_MAGIC);
  return -EILSEQ;
 }

 csum_le = cpu_to_le32(dm_bm_checksum(&disk->flags,
          sb_block_size - sizeof(__le32),
          SUPERBLOCK_CSUM_XOR));
 if (csum_le != disk->csum) {
  DMERR("sb_check failed: csum %u: wanted %u",
        le32_to_cpu(csum_le), le32_to_cpu(disk->csum));
  return -EILSEQ;
 }

 return check_metadata_version(disk);
}
