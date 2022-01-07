
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_set {int dummy; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {int pin; } ;


 unsigned int KEY_PTRS (struct bkey*) ;
 TYPE_1__* PTR_BUCKET (struct cache_set*,struct bkey*,unsigned int) ;
 int atomic_dec_bug (int *) ;
 scalar_t__ ptr_available (struct cache_set*,struct bkey*,unsigned int) ;

void bkey_put(struct cache_set *c, struct bkey *k)
{
 unsigned int i;

 for (i = 0; i < KEY_PTRS(k); i++)
  if (ptr_available(c, k, i))
   atomic_dec_bug(&PTR_BUCKET(c, k, i)->pin);
}
