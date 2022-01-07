
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {int req_nr; } ;
struct cache {int committer; } ;
struct bio {int dummy; } ;


 struct per_bio_data* get_per_bio_data (struct bio*) ;
 int issue_after_commit (int *,struct bio*) ;
 int remap_to_cache (struct cache*,struct bio*,int ) ;
 int remap_to_origin (struct cache*,struct bio*) ;

__attribute__((used)) static bool process_flush_bio(struct cache *cache, struct bio *bio)
{
 struct per_bio_data *pb = get_per_bio_data(bio);

 if (!pb->req_nr)
  remap_to_origin(cache, bio);
 else
  remap_to_cache(cache, bio, 0);

 issue_after_commit(&cache->committer, bio);
 return 1;
}
