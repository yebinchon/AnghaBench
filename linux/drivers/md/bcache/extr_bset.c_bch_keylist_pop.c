
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {struct bkey* top; struct bkey* keys; } ;
struct bkey {int dummy; } ;


 struct bkey* bkey_next (struct bkey*) ;

struct bkey *bch_keylist_pop(struct keylist *l)
{
 struct bkey *k = l->keys;

 if (k == l->top)
  return ((void*)0);

 while (bkey_next(k) != l->top)
  k = bkey_next(k);

 return l->top = k;
}
