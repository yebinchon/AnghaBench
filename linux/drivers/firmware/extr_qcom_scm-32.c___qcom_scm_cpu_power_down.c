
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int QCOM_SCM_CMD_TERMINATE_PC ;
 int QCOM_SCM_FLUSH_FLAG_MASK ;
 int QCOM_SCM_SVC_BOOT ;
 int qcom_scm_call_atomic1 (int ,int ,int) ;

void __qcom_scm_cpu_power_down(u32 flags)
{
 qcom_scm_call_atomic1(QCOM_SCM_SVC_BOOT, QCOM_SCM_CMD_TERMINATE_PC,
   flags & QCOM_SCM_FLUSH_FLAG_MASK);
}
