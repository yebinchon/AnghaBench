
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef void* u32 ;
struct qcom_scm_desc {int arginfo; void** args; int member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {int dummy; } ;


 int EPERM ;
 int QCOM_SCM_ARGS (int,int ,int ,int ) ;
 int QCOM_SCM_IOMMU_SECURE_PTBL_INIT ;
 int QCOM_SCM_RW ;
 int QCOM_SCM_SVC_MP ;
 int QCOM_SCM_VAL ;
 int qcom_scm_call (struct device*,int ,int ,struct qcom_scm_desc*,struct arm_smccc_res*) ;

int __qcom_scm_iommu_secure_ptbl_init(struct device *dev, u64 addr, u32 size,
          u32 spare)
{
 struct qcom_scm_desc desc = {0};
 struct arm_smccc_res res;
 int ret;

 desc.args[0] = addr;
 desc.args[1] = size;
 desc.args[2] = spare;
 desc.arginfo = QCOM_SCM_ARGS(3, QCOM_SCM_RW, QCOM_SCM_VAL,
         QCOM_SCM_VAL);

 ret = qcom_scm_call(dev, QCOM_SCM_SVC_MP,
       QCOM_SCM_IOMMU_SECURE_PTBL_INIT, &desc, &res);


 if (ret == -EPERM)
  ret = 0;

 return ret;
}
