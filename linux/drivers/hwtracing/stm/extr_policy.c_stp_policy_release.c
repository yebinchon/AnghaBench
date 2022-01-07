
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_policy {struct stm_device* stm; } ;
struct stm_device {int policy_mutex; } ;
struct config_item {int dummy; } ;


 int kfree (struct stp_policy*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stp_policy_unbind (struct stp_policy*) ;
 struct stp_policy* to_stp_policy (struct config_item*) ;

__attribute__((used)) static void stp_policy_release(struct config_item *item)
{
 struct stp_policy *policy = to_stp_policy(item);
 struct stm_device *stm = policy->stm;


 if (!stm)
  return;

 mutex_lock(&stm->policy_mutex);
 stp_policy_unbind(policy);
 mutex_unlock(&stm->policy_mutex);

 kfree(policy);
}
