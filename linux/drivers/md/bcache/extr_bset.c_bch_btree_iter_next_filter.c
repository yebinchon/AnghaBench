
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {int dummy; } ;
struct btree_iter {int dummy; } ;
struct bkey {int dummy; } ;
typedef scalar_t__ (* ptr_filter_fn ) (struct btree_keys*,struct bkey*) ;


 struct bkey* bch_btree_iter_next (struct btree_iter*) ;

struct bkey *bch_btree_iter_next_filter(struct btree_iter *iter,
     struct btree_keys *b, ptr_filter_fn fn)
{
 struct bkey *ret;

 do {
  ret = bch_btree_iter_next(iter);
 } while (ret && fn(b, ret));

 return ret;
}
