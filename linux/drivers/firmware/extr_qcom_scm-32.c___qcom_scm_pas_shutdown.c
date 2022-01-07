
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef int out ;
typedef int in ;
typedef int __le32 ;


 int QCOM_SCM_PAS_SHUTDOWN_CMD ;
 int QCOM_SCM_SVC_PIL ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int qcom_scm_call (struct device*,int ,int ,int *,int,int *,int) ;

int __qcom_scm_pas_shutdown(struct device *dev, u32 peripheral)
{
 __le32 out;
 __le32 in;
 int ret;

 in = cpu_to_le32(peripheral);
 ret = qcom_scm_call(dev, QCOM_SCM_SVC_PIL,
       QCOM_SCM_PAS_SHUTDOWN_CMD,
       &in, sizeof(in),
       &out, sizeof(out));

 return ret ? : le32_to_cpu(out);
}
