
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int dummy; } ;
typedef int sector_t ;
typedef int dm_cblock_t ;


 struct dm_cache_policy* __smq_create (int ,int ,int ,int,int) ;

__attribute__((used)) static struct dm_cache_policy *mq_create(dm_cblock_t cache_size,
      sector_t origin_size,
      sector_t cache_block_size)
{
 return __smq_create(cache_size, origin_size, cache_block_size, 1, 1);
}
