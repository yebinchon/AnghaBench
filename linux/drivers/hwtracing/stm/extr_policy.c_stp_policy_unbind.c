
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_policy {struct stm_device* stm; } ;
struct stm_device {int pdrv; int * policy; int policy_mutex; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int lockdep_assert_held (int *) ;
 int stm_put_device (struct stm_device*) ;
 int stm_put_protocol (int ) ;

void stp_policy_unbind(struct stp_policy *policy)
{
 struct stm_device *stm = policy->stm;






 if (WARN_ON_ONCE(!policy->stm))
  return;

 lockdep_assert_held(&stm->policy_mutex);

 stm->policy = ((void*)0);
 policy->stm = ((void*)0);

 stm_put_protocol(stm->pdrv);
 stm_put_device(stm);
}
