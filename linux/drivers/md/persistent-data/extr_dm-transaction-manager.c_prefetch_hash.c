
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dm_block_t ;


 int PREFETCH_BITS ;
 int hash_64 (int ,int ) ;

__attribute__((used)) static unsigned prefetch_hash(dm_block_t b)
{
 return hash_64(b, PREFETCH_BITS);
}
