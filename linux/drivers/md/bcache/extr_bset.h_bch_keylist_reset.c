
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {int keys; int top; } ;



__attribute__((used)) static inline void bch_keylist_reset(struct keylist *l)
{
 l->top = l->keys;
}
