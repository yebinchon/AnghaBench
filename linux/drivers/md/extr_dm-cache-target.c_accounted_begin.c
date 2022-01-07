
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {int len; } ;
struct cache {int tracker; } ;
struct bio {int dummy; } ;


 scalar_t__ accountable_bio (struct cache*,struct bio*) ;
 int bio_sectors (struct bio*) ;
 struct per_bio_data* get_per_bio_data (struct bio*) ;
 int iot_io_begin (int *,int ) ;

__attribute__((used)) static void accounted_begin(struct cache *cache, struct bio *bio)
{
 struct per_bio_data *pb;

 if (accountable_bio(cache, bio)) {
  pb = get_per_bio_data(bio);
  pb->len = bio_sectors(bio);
  iot_io_begin(&cache->tracker, pb->len);
 }
}
