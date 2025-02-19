
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp {int dummy; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_qp_attr {int qp_state; } ;
struct ib_qp {int device; } ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int IB_QP_STATE ;
 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 struct ocrdma_qp* get_ocrdma_qp (struct ib_qp*) ;
 int ocrdma_mbx_modify_qp (struct ocrdma_dev*,struct ocrdma_qp*,struct ib_qp_attr*,int) ;
 int ocrdma_qp_state_change (struct ocrdma_qp*,int ,int*) ;

int _ocrdma_modify_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr,
        int attr_mask)
{
 int status = 0;
 struct ocrdma_qp *qp;
 struct ocrdma_dev *dev;
 enum ib_qp_state old_qps;

 qp = get_ocrdma_qp(ibqp);
 dev = get_ocrdma_dev(ibqp->device);
 if (attr_mask & IB_QP_STATE)
  status = ocrdma_qp_state_change(qp, attr->qp_state, &old_qps);



 if (status < 0)
  return status;
 return ocrdma_mbx_modify_qp(dev, qp, attr, attr_mask);
}
