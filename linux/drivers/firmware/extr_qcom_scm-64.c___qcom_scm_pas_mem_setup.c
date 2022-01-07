
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct qcom_scm_desc {int arginfo; void** args; int member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {int a1; } ;
typedef void* phys_addr_t ;


 int QCOM_SCM_ARGS (int) ;
 int QCOM_SCM_PAS_MEM_SETUP_CMD ;
 int QCOM_SCM_SVC_PIL ;
 int qcom_scm_call (struct device*,int ,int ,struct qcom_scm_desc*,struct arm_smccc_res*) ;

int __qcom_scm_pas_mem_setup(struct device *dev, u32 peripheral,
         phys_addr_t addr, phys_addr_t size)
{
 int ret;
 struct qcom_scm_desc desc = {0};
 struct arm_smccc_res res;

 desc.args[0] = peripheral;
 desc.args[1] = addr;
 desc.args[2] = size;
 desc.arginfo = QCOM_SCM_ARGS(3);

 ret = qcom_scm_call(dev, QCOM_SCM_SVC_PIL, QCOM_SCM_PAS_MEM_SETUP_CMD,
    &desc, &res);

 return ret ? : res.a1;
}
