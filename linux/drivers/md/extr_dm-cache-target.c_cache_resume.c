
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {struct cache* private; } ;
struct TYPE_2__ {int work; } ;
struct cache {int need_tick_bio; TYPE_1__ waker; } ;


 int allow_background_work (struct cache*) ;
 int do_waker (int *) ;

__attribute__((used)) static void cache_resume(struct dm_target *ti)
{
 struct cache *cache = ti->private;

 cache->need_tick_bio = 1;
 allow_background_work(cache);
 do_waker(&cache->waker.work);
}
