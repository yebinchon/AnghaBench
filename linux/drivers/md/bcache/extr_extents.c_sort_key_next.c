
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_iter_set {scalar_t__ k; scalar_t__ end; } ;
struct btree_iter {size_t used; struct btree_iter_set* data; } ;


 scalar_t__ bkey_next (scalar_t__) ;

__attribute__((used)) static void sort_key_next(struct btree_iter *iter,
     struct btree_iter_set *i)
{
 i->k = bkey_next(i->k);

 if (i->k == i->end)
  *i = iter->data[--iter->used];
}
