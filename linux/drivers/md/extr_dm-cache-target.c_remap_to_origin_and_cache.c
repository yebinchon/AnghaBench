
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int bs; } ;
struct bio {int dummy; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int BUG_ON (int) ;
 int GFP_NOIO ;
 int __remap_to_origin_clear_discard (struct cache*,struct bio*,int ,int) ;
 int bio_chain (struct bio*,struct bio*) ;
 struct bio* bio_clone_fast (struct bio*,int ,int *) ;
 int remap_to_cache (struct cache*,struct bio*,int ) ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static void remap_to_origin_and_cache(struct cache *cache, struct bio *bio,
          dm_oblock_t oblock, dm_cblock_t cblock)
{
 struct bio *origin_bio = bio_clone_fast(bio, GFP_NOIO, &cache->bs);

 BUG_ON(!origin_bio);

 bio_chain(origin_bio, bio);




 __remap_to_origin_clear_discard(cache, origin_bio, oblock, 0);
 submit_bio(origin_bio);

 remap_to_cache(cache, bio, cblock);
}
