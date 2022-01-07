
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_ep_common {int state; int mutex; } ;
typedef enum c4iw_ep_state { ____Placeholder_c4iw_ep_state } c4iw_ep_state ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static enum c4iw_ep_state state_read(struct c4iw_ep_common *epc)
{
 enum c4iw_ep_state state;

 mutex_lock(&epc->mutex);
 state = epc->state;
 mutex_unlock(&epc->mutex);
 return state;
}
