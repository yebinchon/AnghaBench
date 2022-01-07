
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_sccc_clr_done {scalar_t__ clr_done; } ;
struct hns_roce_sccc_clr {int qpn; } ;
struct hns_roce_qp {int qpn; } ;
struct TYPE_2__ {int scc_mutex; } ;
struct hns_roce_dev {TYPE_1__ qp_table; int dev; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;


 int ETIMEDOUT ;
 int HNS_ROCE_CMQ_SCC_CLR_DONE_CNT ;
 int HNS_ROCE_OPC_CLR_SCCC ;
 int HNS_ROCE_OPC_QUERY_SCCC ;
 int HNS_ROCE_OPC_RESET_SCCC ;
 int cpu_to_le32 (int ) ;
 int dev_err (int ,char*,...) ;
 int hns_roce_cmq_send (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ;
 int hns_roce_cmq_setup_basic_desc (struct hns_roce_cmq_desc*,int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hns_roce_v2_qp_flow_control_init(struct hns_roce_dev *hr_dev,
      struct hns_roce_qp *hr_qp)
{
 struct hns_roce_sccc_clr_done *resp;
 struct hns_roce_sccc_clr *clr;
 struct hns_roce_cmq_desc desc;
 int ret, i;

 mutex_lock(&hr_dev->qp_table.scc_mutex);


 hns_roce_cmq_setup_basic_desc(&desc, HNS_ROCE_OPC_RESET_SCCC, 0);
 ret = hns_roce_cmq_send(hr_dev, &desc, 1);
 if (ret) {
  dev_err(hr_dev->dev, "Reset SCC ctx  failed(%d)\n", ret);
  goto out;
 }


 hns_roce_cmq_setup_basic_desc(&desc, HNS_ROCE_OPC_CLR_SCCC, 0);
 clr = (struct hns_roce_sccc_clr *)desc.data;
 clr->qpn = cpu_to_le32(hr_qp->qpn);
 ret = hns_roce_cmq_send(hr_dev, &desc, 1);
 if (ret) {
  dev_err(hr_dev->dev, "Clear SCC ctx failed(%d)\n", ret);
  goto out;
 }


 resp = (struct hns_roce_sccc_clr_done *)desc.data;
 for (i = 0; i <= HNS_ROCE_CMQ_SCC_CLR_DONE_CNT; i++) {
  hns_roce_cmq_setup_basic_desc(&desc,
           HNS_ROCE_OPC_QUERY_SCCC, 1);
  ret = hns_roce_cmq_send(hr_dev, &desc, 1);
  if (ret) {
   dev_err(hr_dev->dev, "Query clr cmq failed(%d)\n", ret);
   goto out;
  }

  if (resp->clr_done)
   goto out;

  msleep(20);
 }

 dev_err(hr_dev->dev, "Query SCC clr done flag overtime.\n");
 ret = -ETIMEDOUT;

out:
 mutex_unlock(&hr_dev->qp_table.scc_mutex);
 return ret;
}
