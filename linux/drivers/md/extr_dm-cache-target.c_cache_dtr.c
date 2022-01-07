
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct cache* private; } ;
struct cache {int dummy; } ;


 int destroy (struct cache*) ;

__attribute__((used)) static void cache_dtr(struct dm_target *ti)
{
 struct cache *cache = ti->private;

 destroy(cache);
}
