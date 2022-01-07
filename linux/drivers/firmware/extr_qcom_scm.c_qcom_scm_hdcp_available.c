
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int QCOM_SCM_CMD_HDCP ;
 int QCOM_SCM_SVC_HDCP ;
 int __qcom_scm_is_call_available (int ,int ,int ) ;
 TYPE_1__* __scm ;
 int qcom_scm_clk_disable () ;
 int qcom_scm_clk_enable () ;

bool qcom_scm_hdcp_available(void)
{
 int ret = qcom_scm_clk_enable();

 if (ret)
  return ret;

 ret = __qcom_scm_is_call_available(__scm->dev, QCOM_SCM_SVC_HDCP,
      QCOM_SCM_CMD_HDCP);

 qcom_scm_clk_disable();

 return ret > 0 ? 1 : 0;
}
