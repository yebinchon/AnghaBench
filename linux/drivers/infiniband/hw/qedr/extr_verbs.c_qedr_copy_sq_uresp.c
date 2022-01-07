
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_qp {scalar_t__ icid; } ;
struct qedr_dev {int ibdev; } ;
struct qedr_create_qp_uresp {scalar_t__ sq_icid; int sq_db_offset; } ;


 int DB_ADDR_SHIFT (int ) ;
 int DQ_PWM_OFFSET_XCM_RDMA_SQ_PROD ;
 scalar_t__ rdma_protocol_iwarp (int *,int) ;

__attribute__((used)) static void qedr_copy_sq_uresp(struct qedr_dev *dev,
          struct qedr_create_qp_uresp *uresp,
          struct qedr_qp *qp)
{
 uresp->sq_db_offset = DB_ADDR_SHIFT(DQ_PWM_OFFSET_XCM_RDMA_SQ_PROD);


 if (rdma_protocol_iwarp(&dev->ibdev, 1))
  uresp->sq_icid = qp->icid;
 else
  uresp->sq_icid = qp->icid + 1;
}
