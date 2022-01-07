
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;


 int QCOM_SCM_IO_WRITE ;
 int QCOM_SCM_SVC_IO ;
 int qcom_scm_call_atomic2 (int ,int ,int ,unsigned int) ;

int __qcom_scm_io_writel(struct device *dev, phys_addr_t addr, unsigned int val)
{
 return qcom_scm_call_atomic2(QCOM_SCM_SVC_IO, QCOM_SCM_IO_WRITE,
         addr, val);
}
