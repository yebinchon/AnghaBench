
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int rdma_mrs; int sig_mrs; } ;


 int ib_mr_pool_destroy (struct ib_qp*,int *) ;

void rdma_rw_cleanup_mrs(struct ib_qp *qp)
{
 ib_mr_pool_destroy(qp, &qp->sig_mrs);
 ib_mr_pool_destroy(qp, &qp->rdma_mrs);
}
