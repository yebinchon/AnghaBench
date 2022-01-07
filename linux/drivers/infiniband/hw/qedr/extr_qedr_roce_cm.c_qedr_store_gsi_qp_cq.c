
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_qp {int dummy; } ;
struct qedr_dev {int gsi_qp_created; struct qedr_qp* gsi_qp; void* gsi_rqcq; void* gsi_sqcq; } ;
struct ib_qp_init_attr {int recv_cq; int send_cq; } ;


 void* get_qedr_cq (int ) ;

void qedr_store_gsi_qp_cq(struct qedr_dev *dev, struct qedr_qp *qp,
     struct ib_qp_init_attr *attrs)
{
 dev->gsi_qp_created = 1;
 dev->gsi_sqcq = get_qedr_cq(attrs->send_cq);
 dev->gsi_rqcq = get_qedr_cq(attrs->recv_cq);
 dev->gsi_qp = qp;
}
