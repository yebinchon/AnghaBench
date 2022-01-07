
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct guc_policy {scalar_t__ policy_flags; int fault_time; int preemption_time; int execution_quantum; } ;


 int POLICY_DEFAULT_EXECUTION_QUANTUM_US ;
 int POLICY_DEFAULT_FAULT_TIME_US ;
 int POLICY_DEFAULT_PREEMPTION_TIME_US ;

__attribute__((used)) static void guc_policy_init(struct guc_policy *policy)
{
 policy->execution_quantum = POLICY_DEFAULT_EXECUTION_QUANTUM_US;
 policy->preemption_time = POLICY_DEFAULT_PREEMPTION_TIME_US;
 policy->fault_time = POLICY_DEFAULT_FAULT_TIME_US;
 policy->policy_flags = 0;
}
