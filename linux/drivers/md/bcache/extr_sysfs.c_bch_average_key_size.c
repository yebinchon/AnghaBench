
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nkeys; int data; } ;
struct cache_set {TYPE_1__ gc_stats; } ;


 unsigned int div64_u64 (int ,scalar_t__) ;

__attribute__((used)) static unsigned int bch_average_key_size(struct cache_set *c)
{
 return c->gc_stats.nkeys
  ? div64_u64(c->gc_stats.data, c->gc_stats.nkeys)
  : 0;
}
