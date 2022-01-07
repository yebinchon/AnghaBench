
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int deferred_bio_worker; int wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void wake_deferred_bio_worker(struct cache *cache)
{
 queue_work(cache->wq, &cache->deferred_bio_worker);
}
