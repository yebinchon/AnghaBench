
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree {int keys; } ;
struct bset {int dummy; } ;
struct TYPE_2__ {struct bset* data; } ;


 TYPE_1__* bset_tree_last (int *) ;

__attribute__((used)) static inline struct bset *btree_bset_last(struct btree *b)
{
 return bset_tree_last(&b->keys)->data;
}
