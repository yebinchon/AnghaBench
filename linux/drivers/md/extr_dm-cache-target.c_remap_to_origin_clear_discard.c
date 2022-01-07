
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_oblock_t ;


 int __remap_to_origin_clear_discard (struct cache*,struct bio*,int ,int) ;

__attribute__((used)) static void remap_to_origin_clear_discard(struct cache *cache, struct bio *bio,
       dm_oblock_t oblock)
{

 __remap_to_origin_clear_discard(cache, bio, oblock, 1);
}
