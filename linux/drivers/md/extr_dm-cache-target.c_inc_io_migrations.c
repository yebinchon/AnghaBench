
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int nr_io_migrations; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void inc_io_migrations(struct cache *cache)
{
 atomic_inc(&cache->nr_io_migrations);
}
