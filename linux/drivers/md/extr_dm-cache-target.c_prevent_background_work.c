
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int background_work_lock; } ;


 int down_write (int *) ;
 int lockdep_off () ;
 int lockdep_on () ;

__attribute__((used)) static void prevent_background_work(struct cache *cache)
{
 lockdep_off();
 down_write(&cache->background_work_lock);
 lockdep_on();
}
