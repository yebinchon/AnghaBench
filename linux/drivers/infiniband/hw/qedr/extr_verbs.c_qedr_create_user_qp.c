
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ureq ;
struct TYPE_5__ {int num_pbes; } ;
struct TYPE_8__ {TYPE_2__* pbl_tbl; TYPE_1__ pbl_info; } ;
struct qedr_qp {int qed_qp; int icid; int qp_id; TYPE_4__ urq; int srq; TYPE_4__ usq; } ;
struct qedr_pd {int dummy; } ;
struct qedr_dev {int rdma_ctx; TYPE_3__* ops; int ibdev; } ;
struct qedr_create_qp_ureq {int rq_pbl_ptr; int rq_num_pages; int sq_pbl_ptr; int sq_num_pages; int qp_handle_hi; int qp_handle_lo; int rq_len; int rq_addr; int sq_len; int sq_addr; } ;
struct qed_rdma_create_qp_out_params {int icid; int qp_id; } ;
struct qed_rdma_create_qp_in_params {int rq_pbl_ptr; int rq_num_pages; int sq_pbl_ptr; int sq_num_pages; int qp_handle_hi; int qp_handle_lo; int rq_len; int rq_addr; int sq_len; int sq_addr; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_pd {int dummy; } ;
typedef int in_params ;
struct TYPE_7__ {int (* rdma_destroy_qp ) (int ,int ) ;int (* rdma_create_qp ) (int ,struct qedr_create_qp_ureq*,struct qed_rdma_create_qp_out_params*) ;} ;
struct TYPE_6__ {int pa; } ;


 int DP_ERR (struct qedr_dev*,char*,...) ;
 int EINVAL ;
 int ENOMEM ;
 struct qedr_pd* get_qedr_pd (struct ib_pd*) ;
 int ib_copy_from_udata (struct qedr_create_qp_ureq*,struct ib_udata*,int) ;
 int memset (struct qedr_create_qp_ureq*,int ,int) ;
 int qedr_cleanup_user (struct qedr_dev*,struct qedr_qp*) ;
 int qedr_copy_qp_uresp (struct qedr_dev*,struct qedr_qp*,struct ib_udata*) ;
 int qedr_init_common_qp_in_params (struct qedr_dev*,struct qedr_pd*,struct qedr_qp*,struct ib_qp_init_attr*,int,struct qedr_create_qp_ureq*) ;
 int qedr_init_user_queue (struct ib_udata*,struct qedr_dev*,TYPE_4__*,int ,int ,int ,int ,int) ;
 int qedr_iwarp_populate_user_qp (struct qedr_dev*,struct qedr_qp*,struct qed_rdma_create_qp_out_params*) ;
 int qedr_qp_user_print (struct qedr_dev*,struct qedr_qp*) ;
 scalar_t__ rdma_protocol_iwarp (int *,int) ;
 int rdma_protocol_roce (int *,int) ;
 int stub1 (int ,struct qedr_create_qp_ureq*,struct qed_rdma_create_qp_out_params*) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int qedr_create_user_qp(struct qedr_dev *dev,
          struct qedr_qp *qp,
          struct ib_pd *ibpd,
          struct ib_udata *udata,
          struct ib_qp_init_attr *attrs)
{
 struct qed_rdma_create_qp_in_params in_params;
 struct qed_rdma_create_qp_out_params out_params;
 struct qedr_pd *pd = get_qedr_pd(ibpd);
 struct qedr_create_qp_ureq ureq;
 int alloc_and_init = rdma_protocol_roce(&dev->ibdev, 1);
 int rc = -EINVAL;

 memset(&ureq, 0, sizeof(ureq));
 rc = ib_copy_from_udata(&ureq, udata, sizeof(ureq));
 if (rc) {
  DP_ERR(dev, "Problem copying data from user space\n");
  return rc;
 }


 rc = qedr_init_user_queue(udata, dev, &qp->usq, ureq.sq_addr,
      ureq.sq_len, 0, 0, alloc_and_init);
 if (rc)
  return rc;

 if (!qp->srq) {

  rc = qedr_init_user_queue(udata, dev, &qp->urq, ureq.rq_addr,
       ureq.rq_len, 0, 0, alloc_and_init);
  if (rc)
   return rc;
 }

 memset(&in_params, 0, sizeof(in_params));
 qedr_init_common_qp_in_params(dev, pd, qp, attrs, 0, &in_params);
 in_params.qp_handle_lo = ureq.qp_handle_lo;
 in_params.qp_handle_hi = ureq.qp_handle_hi;
 in_params.sq_num_pages = qp->usq.pbl_info.num_pbes;
 in_params.sq_pbl_ptr = qp->usq.pbl_tbl->pa;
 if (!qp->srq) {
  in_params.rq_num_pages = qp->urq.pbl_info.num_pbes;
  in_params.rq_pbl_ptr = qp->urq.pbl_tbl->pa;
 }

 qp->qed_qp = dev->ops->rdma_create_qp(dev->rdma_ctx,
           &in_params, &out_params);

 if (!qp->qed_qp) {
  rc = -ENOMEM;
  goto err1;
 }

 if (rdma_protocol_iwarp(&dev->ibdev, 1))
  qedr_iwarp_populate_user_qp(dev, qp, &out_params);

 qp->qp_id = out_params.qp_id;
 qp->icid = out_params.icid;

 rc = qedr_copy_qp_uresp(dev, qp, udata);
 if (rc)
  goto err;

 qedr_qp_user_print(dev, qp);

 return 0;
err:
 rc = dev->ops->rdma_destroy_qp(dev->rdma_ctx, qp->qed_qp);
 if (rc)
  DP_ERR(dev, "create qp: fatal fault. rc=%d", rc);

err1:
 qedr_cleanup_user(dev, qp);
 return rc;
}
