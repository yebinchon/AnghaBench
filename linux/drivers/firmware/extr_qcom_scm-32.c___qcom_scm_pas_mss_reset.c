
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int out ;
typedef int in ;
typedef int __le32 ;


 int QCOM_SCM_PAS_MSS_RESET ;
 int QCOM_SCM_SVC_PIL ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int qcom_scm_call (struct device*,int ,int ,int *,int,int *,int) ;

int __qcom_scm_pas_mss_reset(struct device *dev, bool reset)
{
 __le32 out;
 __le32 in = cpu_to_le32(reset);
 int ret;

 ret = qcom_scm_call(dev, QCOM_SCM_SVC_PIL, QCOM_SCM_PAS_MSS_RESET,
   &in, sizeof(in),
   &out, sizeof(out));

 return ret ? : le32_to_cpu(out);
}
