
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {scalar_t__ top; scalar_t__ keys; } ;



__attribute__((used)) static inline bool bch_keylist_empty(struct keylist *l)
{
 return l->top == l->keys;
}
