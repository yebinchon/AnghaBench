
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;
struct btree_op {int dummy; } ;


 int SHRT_MAX ;
 int bch_btree_op_init (struct btree_op*,int ) ;
 int btree_root (int ,struct cache_set*,struct btree_op*) ;
 int check_recurse ;

int bch_btree_check(struct cache_set *c)
{
 struct btree_op op;

 bch_btree_op_init(&op, SHRT_MAX);

 return btree_root(check_recurse, c, &op);
}
