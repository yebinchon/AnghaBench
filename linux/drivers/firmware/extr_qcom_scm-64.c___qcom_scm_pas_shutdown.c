
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_scm_desc {int arginfo; int * args; int member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {int a1; } ;


 int QCOM_SCM_ARGS (int) ;
 int QCOM_SCM_PAS_SHUTDOWN_CMD ;
 int QCOM_SCM_SVC_PIL ;
 int qcom_scm_call (struct device*,int ,int ,struct qcom_scm_desc*,struct arm_smccc_res*) ;

int __qcom_scm_pas_shutdown(struct device *dev, u32 peripheral)
{
 int ret;
 struct qcom_scm_desc desc = {0};
 struct arm_smccc_res res;

 desc.args[0] = peripheral;
 desc.arginfo = QCOM_SCM_ARGS(1);

 ret = qcom_scm_call(dev, QCOM_SCM_SVC_PIL, QCOM_SCM_PAS_SHUTDOWN_CMD,
   &desc, &res);

 return ret ? : res.a1;
}
