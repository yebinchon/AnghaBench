
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {unsigned int devices_max_used; int caching; struct bcache_device** devices; } ;
struct bcache_device {unsigned int id; struct cache_set* c; } ;


 int closure_get (int *) ;

__attribute__((used)) static void bcache_device_attach(struct bcache_device *d, struct cache_set *c,
     unsigned int id)
{
 d->id = id;
 d->c = c;
 c->devices[id] = d;

 if (id >= c->devices_max_used)
  c->devices_max_used = id + 1;

 closure_get(&c->caching);
}
