
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;


 int QCOM_SCM_PAS_IS_SUPPORTED_CMD ;
 int QCOM_SCM_SVC_PIL ;
 int __qcom_scm_is_call_available (int ,int ,int ) ;
 int __qcom_scm_pas_supported (int ,int ) ;
 TYPE_1__* __scm ;

bool qcom_scm_pas_supported(u32 peripheral)
{
 int ret;

 ret = __qcom_scm_is_call_available(__scm->dev, QCOM_SCM_SVC_PIL,
        QCOM_SCM_PAS_IS_SUPPORTED_CMD);
 if (ret <= 0)
  return 0;

 return __qcom_scm_pas_supported(__scm->dev, peripheral);
}
