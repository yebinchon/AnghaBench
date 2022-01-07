
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;
struct bio {int dummy; } ;


 scalar_t__ DM_MAPIO_REMAPPED ;
 int generic_make_request (struct bio*) ;
 int get_bio_block (struct cache*,struct bio*) ;
 scalar_t__ map_bio (struct cache*,struct bio*,int ,int*) ;

__attribute__((used)) static bool process_bio(struct cache *cache, struct bio *bio)
{
 bool commit_needed;

 if (map_bio(cache, bio, get_bio_block(cache, bio), &commit_needed) == DM_MAPIO_REMAPPED)
  generic_make_request(bio);

 return commit_needed;
}
