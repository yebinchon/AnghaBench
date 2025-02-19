
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* max_send_wr; void* max_recv_wr; } ;
struct ib_qp_init_attr {TYPE_1__ cap; int sq_sig_type; int qp_type; } ;
struct ib_qp {int dummy; } ;
struct ib_pd {int dummy; } ;
struct hns_roce_qp {int dummy; } ;
struct hns_roce_dev {TYPE_2__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 void* HNS_ROCE_MIN_WQE_NUM ;
 int IB_QPT_RC ;
 int IB_SIGNAL_ALL_WR ;
 scalar_t__ IS_ERR (struct ib_qp*) ;
 int dev_err (struct device*,char*) ;
 struct ib_qp* hns_roce_create_qp (struct ib_pd*,struct ib_qp_init_attr*,int *) ;
 int memset (struct ib_qp_init_attr*,int ,int) ;
 struct hns_roce_qp* to_hr_qp (struct ib_qp*) ;

__attribute__((used)) static struct hns_roce_qp *hns_roce_v1_create_lp_qp(struct hns_roce_dev *hr_dev,
          struct ib_pd *pd)
{
 struct device *dev = &hr_dev->pdev->dev;
 struct ib_qp_init_attr init_attr;
 struct ib_qp *qp;

 memset(&init_attr, 0, sizeof(struct ib_qp_init_attr));
 init_attr.qp_type = IB_QPT_RC;
 init_attr.sq_sig_type = IB_SIGNAL_ALL_WR;
 init_attr.cap.max_recv_wr = HNS_ROCE_MIN_WQE_NUM;
 init_attr.cap.max_send_wr = HNS_ROCE_MIN_WQE_NUM;

 qp = hns_roce_create_qp(pd, &init_attr, ((void*)0));
 if (IS_ERR(qp)) {
  dev_err(dev, "Create loop qp for mr free failed!");
  return ((void*)0);
 }

 return to_hr_qp(qp);
}
