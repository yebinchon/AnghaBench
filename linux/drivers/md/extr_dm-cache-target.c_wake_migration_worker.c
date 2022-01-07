
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int migration_worker; int wq; } ;


 scalar_t__ passthrough_mode (struct cache*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void wake_migration_worker(struct cache *cache)
{
 if (passthrough_mode(cache))
  return;

 queue_work(cache->wq, &cache->migration_worker);
}
