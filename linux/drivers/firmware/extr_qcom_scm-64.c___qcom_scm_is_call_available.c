
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_scm_desc {int* args; int arginfo; int member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {int a1; } ;


 int ARM_SMCCC_OWNER_SHIFT ;
 int ARM_SMCCC_OWNER_SIP ;
 int QCOM_IS_CALL_AVAIL_CMD ;
 int QCOM_SCM_ARGS (int) ;
 int QCOM_SCM_FNID (int ,int ) ;
 int QCOM_SCM_SVC_INFO ;
 int qcom_scm_call (struct device*,int ,int ,struct qcom_scm_desc*,struct arm_smccc_res*) ;

int __qcom_scm_is_call_available(struct device *dev, u32 svc_id, u32 cmd_id)
{
 int ret;
 struct qcom_scm_desc desc = {0};
 struct arm_smccc_res res;

 desc.arginfo = QCOM_SCM_ARGS(1);
 desc.args[0] = QCOM_SCM_FNID(svc_id, cmd_id) |
   (ARM_SMCCC_OWNER_SIP << ARM_SMCCC_OWNER_SHIFT);

 ret = qcom_scm_call(dev, QCOM_SCM_SVC_INFO, QCOM_IS_CALL_AVAIL_CMD,
       &desc, &res);

 return ret ? : res.a1;
}
