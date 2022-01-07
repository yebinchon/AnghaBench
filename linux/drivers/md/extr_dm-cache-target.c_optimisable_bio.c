
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_oblock_t ;


 scalar_t__ bio_writes_complete_block (struct cache*,struct bio*) ;
 scalar_t__ is_discarded_oblock (struct cache*,int ) ;
 scalar_t__ writeback_mode (struct cache*) ;

__attribute__((used)) static bool optimisable_bio(struct cache *cache, struct bio *bio, dm_oblock_t block)
{
 return writeback_mode(cache) &&
  (is_discarded_oblock(cache, block) || bio_writes_complete_block(cache, bio));
}
