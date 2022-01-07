
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int background_work_lock; } ;


 int down_read_trylock (int *) ;
 int lockdep_off () ;
 int lockdep_on () ;

__attribute__((used)) static bool background_work_begin(struct cache *cache)
{
 bool r;

 lockdep_off();
 r = down_read_trylock(&cache->background_work_lock);
 lockdep_on();

 return r;
}
