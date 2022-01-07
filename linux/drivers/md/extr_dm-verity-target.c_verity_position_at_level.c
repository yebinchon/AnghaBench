
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity {int hash_per_block_bits; } ;
typedef int sector_t ;



__attribute__((used)) static sector_t verity_position_at_level(struct dm_verity *v, sector_t block,
      int level)
{
 return block >> (level * v->hash_per_block_bits);
}
