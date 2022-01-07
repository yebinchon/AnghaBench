
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int background_work_lock; } ;


 int lockdep_off () ;
 int lockdep_on () ;
 int up_write (int *) ;

__attribute__((used)) static void allow_background_work(struct cache *cache)
{
 lockdep_off();
 up_write(&cache->background_work_lock);
 lockdep_on();
}
