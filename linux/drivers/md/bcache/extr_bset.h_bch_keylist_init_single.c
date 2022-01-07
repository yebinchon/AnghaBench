
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {int top; struct bkey* keys; } ;
struct bkey {int dummy; } ;


 int bkey_next (struct bkey*) ;

__attribute__((used)) static inline void bch_keylist_init_single(struct keylist *l, struct bkey *k)
{
 l->keys = k;
 l->top = bkey_next(k);
}
