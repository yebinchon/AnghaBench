
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_ep_common {size_t state; int mutex; } ;
typedef enum c4iw_ep_state { ____Placeholder_c4iw_ep_state } c4iw_ep_state ;


 int __state_set (struct c4iw_ep_common*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ) ;
 int * states ;

__attribute__((used)) static void state_set(struct c4iw_ep_common *epc, enum c4iw_ep_state new)
{
 mutex_lock(&epc->mutex);
 pr_debug("%s -> %s\n", states[epc->state], states[new]);
 __state_set(epc, new);
 mutex_unlock(&epc->mutex);
 return;
}
