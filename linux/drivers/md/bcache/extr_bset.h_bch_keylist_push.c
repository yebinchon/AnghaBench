
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keylist {int top; } ;


 int bkey_next (int ) ;

__attribute__((used)) static inline void bch_keylist_push(struct keylist *l)
{
 l->top = bkey_next(l->top);
}
