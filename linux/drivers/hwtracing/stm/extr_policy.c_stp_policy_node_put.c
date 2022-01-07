
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cg_item; } ;
struct stp_policy_node {TYPE_1__ group; } ;
struct TYPE_4__ {int su_mutex; } ;


 int config_item_put (int *) ;
 int lockdep_assert_held (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__ stp_policy_subsys ;

void stp_policy_node_put(struct stp_policy_node *policy_node)
{
 lockdep_assert_held(&stp_policy_subsys.su_mutex);

 mutex_unlock(&stp_policy_subsys.su_mutex);
 config_item_put(&policy_node->group.cg_item);
}
