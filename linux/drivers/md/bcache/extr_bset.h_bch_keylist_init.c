
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {int inline_keys; int keys_p; int top_p; } ;



__attribute__((used)) static inline void bch_keylist_init(struct keylist *l)
{
 l->top_p = l->keys_p = l->inline_keys;
}
