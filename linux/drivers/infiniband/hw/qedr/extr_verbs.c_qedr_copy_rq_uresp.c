
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_qp {int icid; } ;
struct qedr_dev {int ibdev; } ;
struct qedr_create_qp_uresp {int rq_icid; void* rq_db_offset; void* rq_db2_offset; } ;


 void* DB_ADDR_SHIFT (int ) ;
 int DQ_PWM_OFFSET_TCM_FLAGS ;
 int DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD ;
 int DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD ;
 scalar_t__ rdma_protocol_iwarp (int *,int) ;

__attribute__((used)) static void qedr_copy_rq_uresp(struct qedr_dev *dev,
          struct qedr_create_qp_uresp *uresp,
          struct qedr_qp *qp)
{

 if (rdma_protocol_iwarp(&dev->ibdev, 1)) {
  uresp->rq_db_offset =
      DB_ADDR_SHIFT(DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD);
  uresp->rq_db2_offset = DB_ADDR_SHIFT(DQ_PWM_OFFSET_TCM_FLAGS);
 } else {
  uresp->rq_db_offset =
      DB_ADDR_SHIFT(DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD);
 }

 uresp->rq_icid = qp->icid;
}
