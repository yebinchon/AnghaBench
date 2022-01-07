
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uresp ;
struct qedr_ucontext {int ibucontext; int dpi_size; int dpi_phys_addr; struct qedr_dev* dev; int mm_list_lock; int mm_head; int dpi_addr; int dpi; } ;
struct TYPE_4__ {int max_srq_sge; int max_srq_wr; int max_rqe; int max_sqe; } ;
struct qedr_dev {TYPE_2__ attr; int user_dpm_enabled; int rdma_ctx; TYPE_1__* ops; } ;
struct qedr_alloc_ucontext_resp {int wids_enabled; int max_cqes; int sges_per_srq_wr; int sges_per_recv_wr; int sges_per_send_wr; int max_srq_wr; int max_recv_wr; int max_send_wr; int db_size; int db_pa; int wid_count; int dpm_enabled; } ;
struct qed_rdma_add_user_out_params {int wid_count; int dpi_size; int dpi_phys_addr; int dpi_addr; int dpi; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int (* rdma_add_user ) (int ,struct qed_rdma_add_user_out_params*) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int *) ;
 int DP_ERR (struct qedr_dev*,char*,int) ;
 int EFAULT ;
 int INIT_LIST_HEAD (int *) ;
 int QEDR_MAX_CQES ;
 int QEDR_MAX_RQE_ELEMENTS_PER_RQE ;
 int QEDR_MAX_SQE_ELEMENTS_PER_SQE ;
 int QEDR_MSG_INIT ;
 struct qedr_dev* get_qedr_dev (struct ib_device*) ;
 struct qedr_ucontext* get_qedr_ucontext (struct ib_ucontext*) ;
 int mutex_init (int *) ;
 int qedr_add_mmap (struct qedr_ucontext*,int ,int ) ;
 int qedr_ib_copy_to_udata (struct ib_udata*,struct qedr_alloc_ucontext_resp*,int) ;
 int stub1 (int ,struct qed_rdma_add_user_out_params*) ;

int qedr_alloc_ucontext(struct ib_ucontext *uctx, struct ib_udata *udata)
{
 struct ib_device *ibdev = uctx->device;
 int rc;
 struct qedr_ucontext *ctx = get_qedr_ucontext(uctx);
 struct qedr_alloc_ucontext_resp uresp = {};
 struct qedr_dev *dev = get_qedr_dev(ibdev);
 struct qed_rdma_add_user_out_params oparams;

 if (!udata)
  return -EFAULT;

 rc = dev->ops->rdma_add_user(dev->rdma_ctx, &oparams);
 if (rc) {
  DP_ERR(dev,
         "failed to allocate a DPI for a new RoCE application, rc=%d. To overcome this consider to increase the number of DPIs, increase the doorbell BAR size or just close unnecessary RoCE applications. In order to increase the number of DPIs consult the qedr readme\n",
         rc);
  return rc;
 }

 ctx->dpi = oparams.dpi;
 ctx->dpi_addr = oparams.dpi_addr;
 ctx->dpi_phys_addr = oparams.dpi_phys_addr;
 ctx->dpi_size = oparams.dpi_size;
 INIT_LIST_HEAD(&ctx->mm_head);
 mutex_init(&ctx->mm_list_lock);

 uresp.dpm_enabled = dev->user_dpm_enabled;
 uresp.wids_enabled = 1;
 uresp.wid_count = oparams.wid_count;
 uresp.db_pa = ctx->dpi_phys_addr;
 uresp.db_size = ctx->dpi_size;
 uresp.max_send_wr = dev->attr.max_sqe;
 uresp.max_recv_wr = dev->attr.max_rqe;
 uresp.max_srq_wr = dev->attr.max_srq_wr;
 uresp.sges_per_send_wr = QEDR_MAX_SQE_ELEMENTS_PER_SQE;
 uresp.sges_per_recv_wr = QEDR_MAX_RQE_ELEMENTS_PER_RQE;
 uresp.sges_per_srq_wr = dev->attr.max_srq_sge;
 uresp.max_cqes = QEDR_MAX_CQES;

 rc = qedr_ib_copy_to_udata(udata, &uresp, sizeof(uresp));
 if (rc)
  return rc;

 ctx->dev = dev;

 rc = qedr_add_mmap(ctx, ctx->dpi_phys_addr, ctx->dpi_size);
 if (rc)
  return rc;

 DP_DEBUG(dev, QEDR_MSG_INIT, "Allocating user context %p\n",
   &ctx->ibucontext);
 return 0;
}
