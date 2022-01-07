
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_io_region {int sector; int count; int bdev; } ;
struct dm_cache_migration {int k; TYPE_3__* op; struct cache* cache; } ;
struct cache {int sectors_per_block; int copier; TYPE_2__* cache_dev; TYPE_1__* origin_dev; } ;
struct TYPE_6__ {int cblock; int oblock; } ;
struct TYPE_5__ {int bdev; } ;
struct TYPE_4__ {int bdev; } ;


 int copy_complete ;
 int dm_kcopyd_copy (int ,struct dm_io_region*,int,struct dm_io_region*,int ,int ,int *) ;
 int from_cblock (int ) ;
 int from_oblock (int ) ;

__attribute__((used)) static void copy(struct dm_cache_migration *mg, bool promote)
{
 struct dm_io_region o_region, c_region;
 struct cache *cache = mg->cache;

 o_region.bdev = cache->origin_dev->bdev;
 o_region.sector = from_oblock(mg->op->oblock) * cache->sectors_per_block;
 o_region.count = cache->sectors_per_block;

 c_region.bdev = cache->cache_dev->bdev;
 c_region.sector = from_cblock(mg->op->cblock) * cache->sectors_per_block;
 c_region.count = cache->sectors_per_block;

 if (promote)
  dm_kcopyd_copy(cache->copier, &o_region, 1, &c_region, 0, copy_complete, &mg->k);
 else
  dm_kcopyd_copy(cache->copier, &c_region, 1, &o_region, 0, copy_complete, &mg->k);
}
