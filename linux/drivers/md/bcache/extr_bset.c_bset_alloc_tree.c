
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree_keys {struct bset_tree* set; } ;
struct bset_tree {scalar_t__ prev; scalar_t__ tree; int size; } ;
struct bkey_float {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int MAX_BSETS ;
 unsigned int roundup (int ,int) ;

__attribute__((used)) static void bset_alloc_tree(struct btree_keys *b, struct bset_tree *t)
{
 if (t != b->set) {
  unsigned int j = roundup(t[-1].size,
         64 / sizeof(struct bkey_float));

  t->tree = t[-1].tree + j;
  t->prev = t[-1].prev + j;
 }

 while (t < b->set + MAX_BSETS)
  t++->size = 0;
}
