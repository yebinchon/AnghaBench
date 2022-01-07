
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {int keys; int top_p; } ;


 int bch_keylist_bytes (struct keylist*) ;
 int bkey_next (int ) ;
 scalar_t__ bkey_u64s (int ) ;
 int memmove (int ,int ,int ) ;

void bch_keylist_pop_front(struct keylist *l)
{
 l->top_p -= bkey_u64s(l->keys);

 memmove(l->keys,
  bkey_next(l->keys),
  bch_keylist_bytes(l));
}
