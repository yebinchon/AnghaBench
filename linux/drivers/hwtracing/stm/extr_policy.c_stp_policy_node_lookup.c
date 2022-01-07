
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cg_item; } ;
struct stp_policy_node {TYPE_1__ group; } ;
struct stm_device {int policy_mutex; scalar_t__ policy; } ;
struct TYPE_4__ {int su_mutex; } ;


 struct stp_policy_node* __stp_policy_node_lookup (scalar_t__,char*) ;
 int config_item_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__ stp_policy_subsys ;

struct stp_policy_node *
stp_policy_node_lookup(struct stm_device *stm, char *s)
{
 struct stp_policy_node *policy_node = ((void*)0);

 mutex_lock(&stp_policy_subsys.su_mutex);

 mutex_lock(&stm->policy_mutex);
 if (stm->policy)
  policy_node = __stp_policy_node_lookup(stm->policy, s);
 mutex_unlock(&stm->policy_mutex);

 if (policy_node)
  config_item_get(&policy_node->group.cg_item);
 else
  mutex_unlock(&stp_policy_subsys.su_mutex);

 return policy_node;
}
