
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp_init_attr {int dummy; } ;
struct ib_qp_attr {int dummy; } ;
struct ib_qp {int dummy; } ;
struct hns_roce_qp {int doorbell_qpn; } ;


 int hns_roce_v1_q_qp (struct ib_qp*,struct ib_qp_attr*,int,struct ib_qp_init_attr*) ;
 int hns_roce_v1_q_sqp (struct ib_qp*,struct ib_qp_attr*,int,struct ib_qp_init_attr*) ;
 struct hns_roce_qp* to_hr_qp (struct ib_qp*) ;

__attribute__((used)) static int hns_roce_v1_query_qp(struct ib_qp *ibqp, struct ib_qp_attr *qp_attr,
    int qp_attr_mask,
    struct ib_qp_init_attr *qp_init_attr)
{
 struct hns_roce_qp *hr_qp = to_hr_qp(ibqp);

 return hr_qp->doorbell_qpn <= 1 ?
  hns_roce_v1_q_sqp(ibqp, qp_attr, qp_attr_mask, qp_init_attr) :
  hns_roce_v1_q_qp(ibqp, qp_attr, qp_attr_mask, qp_init_attr);
}
