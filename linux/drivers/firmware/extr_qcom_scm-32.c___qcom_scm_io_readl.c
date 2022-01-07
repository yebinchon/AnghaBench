
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;


 int QCOM_SCM_IO_READ ;
 int QCOM_SCM_SVC_IO ;
 int qcom_scm_call_atomic1 (int ,int ,int ) ;

int __qcom_scm_io_readl(struct device *dev, phys_addr_t addr,
   unsigned int *val)
{
 int ret;

 ret = qcom_scm_call_atomic1(QCOM_SCM_SVC_IO, QCOM_SCM_IO_READ, addr);
 if (ret >= 0)
  *val = ret;

 return ret < 0 ? ret : 0;
}
