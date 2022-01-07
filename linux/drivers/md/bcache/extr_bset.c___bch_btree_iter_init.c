
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {int dummy; } ;
struct btree_iter {struct btree_keys* b; scalar_t__ used; int data; int size; } ;
struct bset_tree {int data; } ;
struct bkey {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct bkey* bch_bset_search (struct btree_keys*,struct bset_tree*,struct bkey*) ;
 int bch_btree_iter_push (struct btree_iter*,struct bkey*,int ) ;
 int bset_bkey_last (int ) ;
 struct bset_tree* bset_tree_last (struct btree_keys*) ;

__attribute__((used)) static struct bkey *__bch_btree_iter_init(struct btree_keys *b,
       struct btree_iter *iter,
       struct bkey *search,
       struct bset_tree *start)
{
 struct bkey *ret = ((void*)0);

 iter->size = ARRAY_SIZE(iter->data);
 iter->used = 0;





 for (; start <= bset_tree_last(b); start++) {
  ret = bch_bset_search(b, start, search);
  bch_btree_iter_push(iter, ret, bset_bkey_last(start->data));
 }

 return ret;
}
