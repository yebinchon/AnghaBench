
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qcom_scm_hdcp_req {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int __qcom_scm_hdcp_req (int ,struct qcom_scm_hdcp_req*,int ,int *) ;
 TYPE_1__* __scm ;
 int qcom_scm_clk_disable () ;
 int qcom_scm_clk_enable () ;

int qcom_scm_hdcp_req(struct qcom_scm_hdcp_req *req, u32 req_cnt, u32 *resp)
{
 int ret = qcom_scm_clk_enable();

 if (ret)
  return ret;

 ret = __qcom_scm_hdcp_req(__scm->dev, req, req_cnt, resp);
 qcom_scm_clk_disable();
 return ret;
}
