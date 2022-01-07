
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qcom_scm_hdcp_req {int val; int addr; } ;
struct qcom_scm_desc {int arginfo; int * args; int member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {scalar_t__ a1; } ;


 int ERANGE ;
 int QCOM_SCM_ARGS (int) ;
 int QCOM_SCM_CMD_HDCP ;
 scalar_t__ QCOM_SCM_HDCP_MAX_REQ_CNT ;
 int QCOM_SCM_SVC_HDCP ;
 int qcom_scm_call (struct device*,int ,int ,struct qcom_scm_desc*,struct arm_smccc_res*) ;

int __qcom_scm_hdcp_req(struct device *dev, struct qcom_scm_hdcp_req *req,
   u32 req_cnt, u32 *resp)
{
 int ret;
 struct qcom_scm_desc desc = {0};
 struct arm_smccc_res res;

 if (req_cnt > QCOM_SCM_HDCP_MAX_REQ_CNT)
  return -ERANGE;

 desc.args[0] = req[0].addr;
 desc.args[1] = req[0].val;
 desc.args[2] = req[1].addr;
 desc.args[3] = req[1].val;
 desc.args[4] = req[2].addr;
 desc.args[5] = req[2].val;
 desc.args[6] = req[3].addr;
 desc.args[7] = req[3].val;
 desc.args[8] = req[4].addr;
 desc.args[9] = req[4].val;
 desc.arginfo = QCOM_SCM_ARGS(10);

 ret = qcom_scm_call(dev, QCOM_SCM_SVC_HDCP, QCOM_SCM_CMD_HDCP, &desc,
       &res);
 *resp = res.a1;

 return ret;
}
