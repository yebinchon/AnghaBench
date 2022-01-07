
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btree_keys {int last_set_unwritten; TYPE_2__* set; } ;
struct bset_tree {scalar_t__ tree; int size; TYPE_1__* data; int * prev; } ;
struct TYPE_4__ {scalar_t__ tree; } ;
struct TYPE_3__ {int start; } ;


 int BUG_ON (int) ;
 int bkey_to_cacheline_offset (struct bset_tree*,int ,int ) ;
 int bset_alloc_tree (struct btree_keys*,struct bset_tree*) ;
 struct bset_tree* bset_tree_last (struct btree_keys*) ;
 scalar_t__ btree_keys_cachelines (struct btree_keys*) ;

__attribute__((used)) static void bch_bset_build_unwritten_tree(struct btree_keys *b)
{
 struct bset_tree *t = bset_tree_last(b);

 BUG_ON(b->last_set_unwritten);
 b->last_set_unwritten = 1;

 bset_alloc_tree(b, t);

 if (t->tree != b->set->tree + btree_keys_cachelines(b)) {
  t->prev[0] = bkey_to_cacheline_offset(t, 0, t->data->start);
  t->size = 1;
 }
}
