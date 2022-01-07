
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_bytes; scalar_t__ nodes; } ;
struct cache_set {TYPE_1__ gc_stats; } ;


 int btree_bytes (struct cache_set*) ;
 unsigned int div64_u64 (int,int) ;

__attribute__((used)) static unsigned int bch_btree_used(struct cache_set *c)
{
 return div64_u64(c->gc_stats.key_bytes * 100,
    (c->gc_stats.nodes ?: 1) * btree_bytes(c));
}
