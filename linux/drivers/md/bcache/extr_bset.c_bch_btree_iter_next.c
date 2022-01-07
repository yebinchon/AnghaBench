
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_iter {int dummy; } ;
struct bkey {int dummy; } ;


 struct bkey* __bch_btree_iter_next (struct btree_iter*,int ) ;
 int btree_iter_cmp ;

struct bkey *bch_btree_iter_next(struct btree_iter *iter)
{
 return __bch_btree_iter_next(iter, btree_iter_cmp);

}
