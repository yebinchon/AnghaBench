
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_scm_desc {int arginfo; int * args; int member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {size_t a1; int a2; } ;


 int QCOM_SCM_ARGS (int) ;
 int QCOM_SCM_IOMMU_SECURE_PTBL_SIZE ;
 int QCOM_SCM_SVC_MP ;
 int qcom_scm_call (struct device*,int ,int ,struct qcom_scm_desc*,struct arm_smccc_res*) ;

int __qcom_scm_iommu_secure_ptbl_size(struct device *dev, u32 spare,
          size_t *size)
{
 struct qcom_scm_desc desc = {0};
 struct arm_smccc_res res;
 int ret;

 desc.args[0] = spare;
 desc.arginfo = QCOM_SCM_ARGS(1);

 ret = qcom_scm_call(dev, QCOM_SCM_SVC_MP,
       QCOM_SCM_IOMMU_SECURE_PTBL_SIZE, &desc, &res);

 if (size)
  *size = res.a1;

 return ret ? : res.a2;
}
