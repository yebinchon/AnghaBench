
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_iter_set {int k; } ;


 scalar_t__ bkey_cmp (int ,int ) ;

__attribute__((used)) static inline bool btree_iter_cmp(struct btree_iter_set l,
      struct btree_iter_set r)
{
 return bkey_cmp(l.k, r.k) > 0;
}
