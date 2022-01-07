
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity {int* hash_level_block; int hash_per_block_bits; unsigned int digest_size; unsigned int hash_dev_block_bits; int version; } ;
typedef int sector_t ;


 int verity_position_at_level (struct dm_verity*,int,int) ;

__attribute__((used)) static void verity_hash_at_level(struct dm_verity *v, sector_t block, int level,
     sector_t *hash_block, unsigned *offset)
{
 sector_t position = verity_position_at_level(v, block, level);
 unsigned idx;

 *hash_block = v->hash_level_block[level] + (position >> v->hash_per_block_bits);

 if (!offset)
  return;

 idx = position & ((1 << v->hash_per_block_bits) - 1);
 if (!v->version)
  *offset = idx * v->digest_size;
 else
  *offset = idx << (v->hash_dev_block_bits - v->hash_per_block_bits);
}
