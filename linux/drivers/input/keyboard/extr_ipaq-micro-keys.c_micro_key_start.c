
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipaq_micro_keys {TYPE_1__* micro; } ;
struct TYPE_2__ {int lock; struct ipaq_micro_keys* key_data; int key; } ;


 int micro_key_receive ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void micro_key_start(struct ipaq_micro_keys *keys)
{
 spin_lock(&keys->micro->lock);
 keys->micro->key = micro_key_receive;
 keys->micro->key_data = keys;
 spin_unlock(&keys->micro->lock);
}
