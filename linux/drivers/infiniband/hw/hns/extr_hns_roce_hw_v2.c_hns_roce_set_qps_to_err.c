
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct ib_qp_attr {int qp_state; } ;
struct TYPE_10__ {scalar_t__ uobject; } ;
struct TYPE_9__ {scalar_t__ virt_addr; } ;
struct TYPE_8__ {int head; } ;
struct TYPE_7__ {scalar_t__ virt_addr; } ;
struct TYPE_6__ {int head; } ;
struct hns_roce_qp {int sdb_en; int rdb_en; int state; TYPE_5__ ibqp; TYPE_4__ rdb; TYPE_3__ rq; TYPE_2__ sdb; TYPE_1__ sq; } ;
struct hns_roce_dev {int dev; } ;


 int IB_QPS_ERR ;
 int IB_QP_STATE ;
 struct hns_roce_qp* __hns_roce_qp_lookup (struct hns_roce_dev*,int ) ;
 int dev_err (int ,char*,int ) ;
 int dev_warn (int ,char*) ;
 int hns_roce_v2_modify_qp (TYPE_5__*,struct ib_qp_attr*,int,int ,int ) ;

__attribute__((used)) static void hns_roce_set_qps_to_err(struct hns_roce_dev *hr_dev, u32 qpn)
{
 struct hns_roce_qp *hr_qp;
 struct ib_qp_attr attr;
 int attr_mask;
 int ret;

 hr_qp = __hns_roce_qp_lookup(hr_dev, qpn);
 if (!hr_qp) {
  dev_warn(hr_dev->dev, "no hr_qp can be found!\n");
  return;
 }

 if (hr_qp->ibqp.uobject) {
  if (hr_qp->sdb_en == 1) {
   hr_qp->sq.head = *(int *)(hr_qp->sdb.virt_addr);
   if (hr_qp->rdb_en == 1)
    hr_qp->rq.head = *(int *)(hr_qp->rdb.virt_addr);
  } else {
   dev_warn(hr_dev->dev, "flush cqe is unsupported in userspace!\n");
   return;
  }
 }

 attr_mask = IB_QP_STATE;
 attr.qp_state = IB_QPS_ERR;
 ret = hns_roce_v2_modify_qp(&hr_qp->ibqp, &attr, attr_mask,
        hr_qp->state, IB_QPS_ERR);
 if (ret)
  dev_err(hr_dev->dev, "failed to modify qp %d to err state.\n",
   qpn);
}
