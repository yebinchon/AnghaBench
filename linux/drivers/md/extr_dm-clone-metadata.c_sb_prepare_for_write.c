
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct superblock_disk {int csum; int flags; int blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef int __le32 ;


 int SUPERBLOCK_CSUM_XOR ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 struct superblock_disk* dm_block_data (struct dm_block*) ;
 int dm_block_location (struct dm_block*) ;
 int dm_bm_checksum (int *,size_t,int ) ;

__attribute__((used)) static void sb_prepare_for_write(struct dm_block_validator *v,
     struct dm_block *b, size_t sb_block_size)
{
 struct superblock_disk *sb;
 u32 csum;

 sb = dm_block_data(b);
 sb->blocknr = cpu_to_le64(dm_block_location(b));

 csum = dm_bm_checksum(&sb->flags, sb_block_size - sizeof(__le32),
         SUPERBLOCK_CSUM_XOR);
 sb->csum = cpu_to_le32(csum);
}
