
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct qcom_scm_desc {int arginfo; void** args; int member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {int a1; } ;


 int QCOM_SCM_ARGS (int) ;
 int QCOM_SCM_RESTORE_SEC_CFG ;
 int QCOM_SCM_SVC_MP ;
 int qcom_scm_call (struct device*,int ,int ,struct qcom_scm_desc*,struct arm_smccc_res*) ;

int __qcom_scm_restore_sec_cfg(struct device *dev, u32 device_id, u32 spare)
{
 struct qcom_scm_desc desc = {0};
 struct arm_smccc_res res;
 int ret;

 desc.args[0] = device_id;
 desc.args[1] = spare;
 desc.arginfo = QCOM_SCM_ARGS(2);

 ret = qcom_scm_call(dev, QCOM_SCM_SVC_MP, QCOM_SCM_RESTORE_SEC_CFG,
       &desc, &res);

 return ret ? : res.a1;
}
