
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {scalar_t__ keys_p; scalar_t__ inline_keys; } ;


 int kfree (scalar_t__) ;

__attribute__((used)) static inline void bch_keylist_free(struct keylist *l)
{
 if (l->keys_p != l->inline_keys)
  kfree(l->keys_p);
}
