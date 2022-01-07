
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned long LSM_POLICY_CHANGE ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int ib_mad_agent_security_change () ;
 int ib_policy_change_work ;
 int schedule_work (int *) ;

__attribute__((used)) static int ib_security_change(struct notifier_block *nb, unsigned long event,
         void *lsm_data)
{
 if (event != LSM_POLICY_CHANGE)
  return NOTIFY_DONE;

 schedule_work(&ib_policy_change_work);
 ib_mad_agent_security_change();

 return NOTIFY_OK;
}
