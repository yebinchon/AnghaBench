
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dm_cblock_t ;


 int NR_CACHE_LEVELS ;
 int from_cblock (int ) ;
 int hash_32 (int ,int) ;

__attribute__((used)) static unsigned random_level(dm_cblock_t cblock)
{
 return hash_32(from_cblock(cblock), 9) & (NR_CACHE_LEVELS - 1);
}
