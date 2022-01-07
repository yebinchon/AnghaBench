
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {int len; } ;
struct cache {int tracker; } ;
struct bio {int dummy; } ;


 struct per_bio_data* get_per_bio_data (struct bio*) ;
 int iot_io_end (int *,int ) ;

__attribute__((used)) static void accounted_complete(struct cache *cache, struct bio *bio)
{
 struct per_bio_data *pb = get_per_bio_data(bio);

 iot_io_end(&cache->tracker, pb->len);
}
