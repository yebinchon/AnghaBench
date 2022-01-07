
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {size_t top_p; size_t keys_p; } ;



__attribute__((used)) static inline size_t bch_keylist_nkeys(struct keylist *l)
{
 return l->top_p - l->keys_p;
}
