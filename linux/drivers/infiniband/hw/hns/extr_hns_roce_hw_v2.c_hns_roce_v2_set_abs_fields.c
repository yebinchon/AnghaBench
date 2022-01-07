
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp_attr {int dummy; } ;
struct ib_qp {int device; } ;
struct hns_roce_v2_qp_context {int dummy; } ;
struct hns_roce_dev {int dev; } ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int EINVAL ;
 int IB_QPS_INIT ;
 int IB_QPS_RESET ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int dev_err (int ,char*) ;
 scalar_t__ hns_roce_v2_check_qp_stat (int,int) ;
 int memset (struct hns_roce_v2_qp_context*,int ,int) ;
 int modify_qp_init_to_init (struct ib_qp*,struct ib_qp_attr const*,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ;
 int modify_qp_init_to_rtr (struct ib_qp*,struct ib_qp_attr const*,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ;
 int modify_qp_reset_to_init (struct ib_qp*,struct ib_qp_attr const*,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ;
 int modify_qp_rtr_to_rts (struct ib_qp*,struct ib_qp_attr const*,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ;
 struct hns_roce_dev* to_hr_dev (int ) ;

__attribute__((used)) static int hns_roce_v2_set_abs_fields(struct ib_qp *ibqp,
          const struct ib_qp_attr *attr,
          int attr_mask,
          enum ib_qp_state cur_state,
          enum ib_qp_state new_state,
          struct hns_roce_v2_qp_context *context,
          struct hns_roce_v2_qp_context *qpc_mask)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibqp->device);
 int ret = 0;

 if (cur_state == IB_QPS_RESET && new_state == IB_QPS_INIT) {
  memset(qpc_mask, 0, sizeof(*qpc_mask));
  modify_qp_reset_to_init(ibqp, attr, attr_mask, context,
     qpc_mask);
 } else if (cur_state == IB_QPS_INIT && new_state == IB_QPS_INIT) {
  modify_qp_init_to_init(ibqp, attr, attr_mask, context,
           qpc_mask);
 } else if (cur_state == IB_QPS_INIT && new_state == IB_QPS_RTR) {
  ret = modify_qp_init_to_rtr(ibqp, attr, attr_mask, context,
         qpc_mask);
  if (ret)
   goto out;
 } else if (cur_state == IB_QPS_RTR && new_state == IB_QPS_RTS) {
  ret = modify_qp_rtr_to_rts(ibqp, attr, attr_mask, context,
        qpc_mask);
  if (ret)
   goto out;
 } else if (hns_roce_v2_check_qp_stat(cur_state, new_state)) {

  ;
 } else {
  dev_err(hr_dev->dev, "Illegal state for QP!\n");
  ret = -EINVAL;
  goto out;
 }

out:
 return ret;
}
