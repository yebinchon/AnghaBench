
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {int set; } ;
struct btree_iter {int dummy; } ;
struct bkey {int dummy; } ;


 struct bkey* __bch_btree_iter_init (struct btree_keys*,struct btree_iter*,struct bkey*,int ) ;

struct bkey *bch_btree_iter_init(struct btree_keys *b,
     struct btree_iter *iter,
     struct bkey *search)
{
 return __bch_btree_iter_init(b, iter, search, b->set);
}
