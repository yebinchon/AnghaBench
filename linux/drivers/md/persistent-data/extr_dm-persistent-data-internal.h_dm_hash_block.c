
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dm_block_t ;



__attribute__((used)) static inline unsigned dm_hash_block(dm_block_t b, unsigned hash_mask)
{
 const unsigned BIG_PRIME = 4294967291UL;

 return (((unsigned) b) * BIG_PRIME) & hash_mask;
}
