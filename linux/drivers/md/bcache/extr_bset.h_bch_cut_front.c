
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bkey {int dummy; } ;


 int BUG_ON (int) ;
 int __bch_cut_front (struct bkey const*,struct bkey*) ;
 scalar_t__ bkey_cmp (struct bkey const*,struct bkey*) ;

__attribute__((used)) static inline bool bch_cut_front(const struct bkey *where, struct bkey *k)
{
 BUG_ON(bkey_cmp(where, k) > 0);
 return __bch_cut_front(where, k);
}
