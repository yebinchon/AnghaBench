
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_scm_desc {int arginfo; void** args; int member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {int dummy; } ;


 int QCOM_SCM_ARGS (int) ;
 void* QCOM_SCM_SET_DLOAD_MODE ;
 int QCOM_SCM_SVC_BOOT ;
 int qcom_scm_call (struct device*,int ,void*,struct qcom_scm_desc*,struct arm_smccc_res*) ;

int __qcom_scm_set_dload_mode(struct device *dev, bool enable)
{
 struct qcom_scm_desc desc = {0};
 struct arm_smccc_res res;

 desc.args[0] = QCOM_SCM_SET_DLOAD_MODE;
 desc.args[1] = enable ? QCOM_SCM_SET_DLOAD_MODE : 0;
 desc.arginfo = QCOM_SCM_ARGS(2);

 return qcom_scm_call(dev, QCOM_SCM_SVC_BOOT, QCOM_SCM_SET_DLOAD_MODE,
        &desc, &res);
}
