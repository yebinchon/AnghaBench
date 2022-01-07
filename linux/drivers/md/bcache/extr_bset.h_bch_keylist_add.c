
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {int top; } ;
struct bkey {int dummy; } ;


 int bch_keylist_push (struct keylist*) ;
 int bkey_copy (int ,struct bkey*) ;

__attribute__((used)) static inline void bch_keylist_add(struct keylist *l, struct bkey *k)
{
 bkey_copy(l->top, k);
 bch_keylist_push(l);
}
