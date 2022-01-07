
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stp_policy_node {unsigned int first_channel; unsigned int last_channel; TYPE_1__* policy; } ;
struct stm_device {TYPE_2__* data; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_6__ {int su_mutex; } ;
struct TYPE_5__ {unsigned int sw_nchannels; } ;
struct TYPE_4__ {struct stm_device* stm; } ;


 size_t EINVAL ;
 size_t ENODEV ;
 size_t ERANGE ;
 unsigned int INT_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*) ;
 TYPE_3__ stp_policy_subsys ;
 struct stp_policy_node* to_stp_policy_node (struct config_item*) ;

__attribute__((used)) static ssize_t
stp_policy_node_channels_store(struct config_item *item, const char *page,
          size_t count)
{
 struct stp_policy_node *policy_node = to_stp_policy_node(item);
 unsigned int first, last;
 struct stm_device *stm;
 char *p = (char *)page;
 ssize_t ret = -ENODEV;

 if (sscanf(p, "%u %u", &first, &last) != 2)
  return -EINVAL;

 mutex_lock(&stp_policy_subsys.su_mutex);
 stm = policy_node->policy->stm;
 if (!stm)
  goto unlock;

 if (first > INT_MAX || last > INT_MAX || first > last ||
     last >= stm->data->sw_nchannels) {
  ret = -ERANGE;
  goto unlock;
 }

 ret = count;
 policy_node->first_channel = first;
 policy_node->last_channel = last;

unlock:
 mutex_unlock(&stp_policy_subsys.su_mutex);

 return ret;
}
