
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;
struct btree_op {int dummy; } ;
struct btree {int dummy; } ;


 struct btree* __bch_btree_node_alloc (struct cache_set*,struct btree_op*,int,int ,struct btree*) ;

__attribute__((used)) static struct btree *bch_btree_node_alloc(struct cache_set *c,
       struct btree_op *op, int level,
       struct btree *parent)
{
 return __bch_btree_node_alloc(c, op, level, op != ((void*)0), parent);
}
