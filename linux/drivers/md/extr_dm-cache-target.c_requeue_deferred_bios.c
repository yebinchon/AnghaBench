
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {int dummy; } ;
struct cache {struct bio_list deferred_bios; } ;
struct bio {int bi_status; } ;


 int BLK_STS_DM_REQUEUE ;
 int bio_endio (struct bio*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;

__attribute__((used)) static void requeue_deferred_bios(struct cache *cache)
{
 struct bio *bio;
 struct bio_list bios;

 bio_list_init(&bios);
 bio_list_merge(&bios, &cache->deferred_bios);
 bio_list_init(&cache->deferred_bios);

 while ((bio = bio_list_pop(&bios))) {
  bio->bi_status = BLK_STS_DM_REQUEUE;
  bio_endio(bio);
 }
}
