
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct array_block {int max_entries; int csum; int blocknr; } ;
typedef int __le32 ;


 int CSUM_XOR ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 struct array_block* dm_block_data (struct dm_block*) ;
 int dm_block_location (struct dm_block*) ;
 int dm_bm_checksum (int *,size_t,int ) ;

__attribute__((used)) static void array_block_prepare_for_write(struct dm_block_validator *v,
       struct dm_block *b,
       size_t size_of_block)
{
 struct array_block *bh_le = dm_block_data(b);

 bh_le->blocknr = cpu_to_le64(dm_block_location(b));
 bh_le->csum = cpu_to_le32(dm_bm_checksum(&bh_le->max_entries,
       size_of_block - sizeof(__le32),
       CSUM_XOR));
}
