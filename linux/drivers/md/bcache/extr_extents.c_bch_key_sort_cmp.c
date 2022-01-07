
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_iter_set {scalar_t__ k; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ bkey_cmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool bch_key_sort_cmp(struct btree_iter_set l,
        struct btree_iter_set r)
{
 int64_t c = bkey_cmp(l.k, r.k);

 return c ? c > 0 : l.k < r.k;
}
