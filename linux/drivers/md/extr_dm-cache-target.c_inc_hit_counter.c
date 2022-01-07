
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_hit; int read_hit; } ;
struct cache {TYPE_1__ stats; } ;
struct bio {int dummy; } ;


 scalar_t__ READ ;
 int atomic_inc (int *) ;
 scalar_t__ bio_data_dir (struct bio*) ;

__attribute__((used)) static void inc_hit_counter(struct cache *cache, struct bio *bio)
{
 atomic_inc(bio_data_dir(bio) == READ ?
     &cache->stats.read_hit : &cache->stats.write_hit);
}
