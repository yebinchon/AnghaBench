
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pbl_table; int pbl_info; } ;
struct TYPE_5__ {int itid; } ;
struct qedr_mr {scalar_t__ type; int umem; TYPE_3__ info; TYPE_2__ hw_mr; } ;
struct qedr_dev {int rdma_ctx; TYPE_1__* ops; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int device; } ;
struct TYPE_4__ {int (* rdma_deregister_tid ) (int ,int ) ;int (* rdma_free_tid ) (int ,int ) ;} ;


 scalar_t__ QEDR_MR_DMA ;
 scalar_t__ QEDR_MR_FRMR ;
 struct qedr_dev* get_qedr_dev (int ) ;
 struct qedr_mr* get_qedr_mr (struct ib_mr*) ;
 int ib_umem_release (int ) ;
 int kfree (struct qedr_mr*) ;
 int qedr_free_pbl (struct qedr_dev*,int *,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

int qedr_dereg_mr(struct ib_mr *ib_mr, struct ib_udata *udata)
{
 struct qedr_mr *mr = get_qedr_mr(ib_mr);
 struct qedr_dev *dev = get_qedr_dev(ib_mr->device);
 int rc = 0;

 rc = dev->ops->rdma_deregister_tid(dev->rdma_ctx, mr->hw_mr.itid);
 if (rc)
  return rc;

 dev->ops->rdma_free_tid(dev->rdma_ctx, mr->hw_mr.itid);

 if ((mr->type != QEDR_MR_DMA) && (mr->type != QEDR_MR_FRMR))
  qedr_free_pbl(dev, &mr->info.pbl_info, mr->info.pbl_table);


 ib_umem_release(mr->umem);

 kfree(mr);

 return rc;
}
