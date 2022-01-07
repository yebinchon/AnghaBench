
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_migration {int invalidate_oblock; int invalidate_cblock; struct bio* overwrite_bio; } ;
struct cache {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int EPERM ;
 struct dm_cache_migration* alloc_migration (struct cache*) ;
 int background_work_begin (struct cache*) ;
 int invalidate_lock (struct dm_cache_migration*) ;

__attribute__((used)) static int invalidate_start(struct cache *cache, dm_cblock_t cblock,
       dm_oblock_t oblock, struct bio *bio)
{
 struct dm_cache_migration *mg;

 if (!background_work_begin(cache))
  return -EPERM;

 mg = alloc_migration(cache);

 mg->overwrite_bio = bio;
 mg->invalidate_cblock = cblock;
 mg->invalidate_oblock = oblock;

 return invalidate_lock(mg);
}
