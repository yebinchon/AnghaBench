
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bucket_size; } ;
struct cache_set {int nbuckets; TYPE_1__ sb; int sectors_to_gc; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static inline void set_gc_sectors(struct cache_set *c)
{
 atomic_set(&c->sectors_to_gc, c->sb.bucket_size * c->nbuckets / 16);
}
