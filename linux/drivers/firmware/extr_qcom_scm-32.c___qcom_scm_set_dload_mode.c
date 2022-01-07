
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int QCOM_SCM_SET_DLOAD_MODE ;
 int QCOM_SCM_SVC_BOOT ;
 int qcom_scm_call_atomic2 (int ,int ,int ,int ) ;

int __qcom_scm_set_dload_mode(struct device *dev, bool enable)
{
 return qcom_scm_call_atomic2(QCOM_SCM_SVC_BOOT, QCOM_SCM_SET_DLOAD_MODE,
         enable ? QCOM_SCM_SET_DLOAD_MODE : 0, 0);
}
