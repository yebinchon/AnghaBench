
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;
struct btree_op {int dummy; } ;
struct bkey {int dummy; } ;
typedef int btree_map_keys_fn ;


 int btree_root (int ,struct cache_set*,struct btree_op*,struct bkey*,int *,int) ;
 int map_keys_recurse ;

int bch_btree_map_keys(struct btree_op *op, struct cache_set *c,
         struct bkey *from, btree_map_keys_fn *fn, int flags)
{
 return btree_root(map_keys_recurse, c, op, from, fn, flags);
}
