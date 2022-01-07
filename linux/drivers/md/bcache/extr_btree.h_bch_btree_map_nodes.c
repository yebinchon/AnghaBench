
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;
struct btree_op {int dummy; } ;
struct bkey {int dummy; } ;
typedef int btree_map_nodes_fn ;


 int MAP_ALL_NODES ;
 int __bch_btree_map_nodes (struct btree_op*,struct cache_set*,struct bkey*,int *,int ) ;

__attribute__((used)) static inline int bch_btree_map_nodes(struct btree_op *op, struct cache_set *c,
          struct bkey *from, btree_map_nodes_fn *fn)
{
 return __bch_btree_map_nodes(op, c, from, fn, MAP_ALL_NODES);
}
