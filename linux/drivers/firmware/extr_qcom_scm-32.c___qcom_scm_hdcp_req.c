
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_scm_hdcp_req {int dummy; } ;
struct device {int dummy; } ;


 int ERANGE ;
 int QCOM_SCM_CMD_HDCP ;
 int QCOM_SCM_HDCP_MAX_REQ_CNT ;
 int QCOM_SCM_SVC_HDCP ;
 int qcom_scm_call (struct device*,int ,int ,struct qcom_scm_hdcp_req*,int,int*,int) ;

int __qcom_scm_hdcp_req(struct device *dev, struct qcom_scm_hdcp_req *req,
   u32 req_cnt, u32 *resp)
{
 if (req_cnt > QCOM_SCM_HDCP_MAX_REQ_CNT)
  return -ERANGE;

 return qcom_scm_call(dev, QCOM_SCM_SVC_HDCP, QCOM_SCM_CMD_HDCP,
  req, req_cnt * sizeof(*req), resp, sizeof(*resp));
}
