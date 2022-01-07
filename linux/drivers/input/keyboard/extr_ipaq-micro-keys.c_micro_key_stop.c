
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipaq_micro_keys {TYPE_1__* micro; } ;
struct TYPE_2__ {int lock; int * key_data; int * key; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void micro_key_stop(struct ipaq_micro_keys *keys)
{
 spin_lock(&keys->micro->lock);
 keys->micro->key = ((void*)0);
 keys->micro->key_data = ((void*)0);
 spin_unlock(&keys->micro->lock);
}
