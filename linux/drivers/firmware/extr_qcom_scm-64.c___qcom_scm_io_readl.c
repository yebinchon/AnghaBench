
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_scm_desc {int arginfo; int * args; int member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {unsigned int a1; } ;
typedef int phys_addr_t ;


 int QCOM_SCM_ARGS (int) ;
 int QCOM_SCM_IO_READ ;
 int QCOM_SCM_SVC_IO ;
 int qcom_scm_call (struct device*,int ,int ,struct qcom_scm_desc*,struct arm_smccc_res*) ;

int __qcom_scm_io_readl(struct device *dev, phys_addr_t addr,
   unsigned int *val)
{
 struct qcom_scm_desc desc = {0};
 struct arm_smccc_res res;
 int ret;

 desc.args[0] = addr;
 desc.arginfo = QCOM_SCM_ARGS(1);

 ret = qcom_scm_call(dev, QCOM_SCM_SVC_IO, QCOM_SCM_IO_READ,
       &desc, &res);
 if (ret >= 0)
  *val = res.a1;

 return ret < 0 ? ret : 0;
}
