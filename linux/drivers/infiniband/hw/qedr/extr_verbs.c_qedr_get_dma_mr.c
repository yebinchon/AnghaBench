
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedr_pd {int pd_id; } ;
struct TYPE_4__ {int itid; int local_read; int local_write; int remote_read; int remote_write; int remote_atomic; int dma_mr; int key; int pd; int tid_type; } ;
struct ib_mr {int lkey; int rkey; } ;
struct qedr_mr {TYPE_2__ hw_mr; struct ib_mr ibmr; int type; } ;
struct qedr_dev {int rdma_ctx; TYPE_1__* ops; } ;
struct ib_pd {int device; } ;
struct TYPE_3__ {int (* rdma_alloc_tid ) (int ,int*) ;int (* rdma_register_tid ) (int ,TYPE_2__*) ;int (* rdma_free_tid ) (int ,int) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int) ;
 int DP_ERR (struct qedr_dev*,char*,int) ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int QEDR_MR_DMA ;
 int QEDR_MSG_MR ;
 int QED_RDMA_TID_REGISTERED_MR ;
 struct qedr_dev* get_qedr_dev (int ) ;
 struct qedr_pd* get_qedr_pd (struct ib_pd*) ;
 int kfree (struct qedr_mr*) ;
 struct qedr_mr* kzalloc (int,int ) ;
 int stub1 (int ,int*) ;
 int stub2 (int ,TYPE_2__*) ;
 int stub3 (int ,int) ;

struct ib_mr *qedr_get_dma_mr(struct ib_pd *ibpd, int acc)
{
 struct qedr_dev *dev = get_qedr_dev(ibpd->device);
 struct qedr_pd *pd = get_qedr_pd(ibpd);
 struct qedr_mr *mr;
 int rc;

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 mr->type = QEDR_MR_DMA;

 rc = dev->ops->rdma_alloc_tid(dev->rdma_ctx, &mr->hw_mr.itid);
 if (rc) {
  DP_ERR(dev, "roce alloc tid returned an error %d\n", rc);
  goto err1;
 }


 mr->hw_mr.tid_type = QED_RDMA_TID_REGISTERED_MR;
 mr->hw_mr.pd = pd->pd_id;
 mr->hw_mr.local_read = 1;
 mr->hw_mr.local_write = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
 mr->hw_mr.remote_read = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
 mr->hw_mr.remote_write = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
 mr->hw_mr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
 mr->hw_mr.dma_mr = 1;

 rc = dev->ops->rdma_register_tid(dev->rdma_ctx, &mr->hw_mr);
 if (rc) {
  DP_ERR(dev, "roce register tid returned an error %d\n", rc);
  goto err2;
 }

 mr->ibmr.lkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;
 if (mr->hw_mr.remote_write || mr->hw_mr.remote_read ||
     mr->hw_mr.remote_atomic)
  mr->ibmr.rkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;

 DP_DEBUG(dev, QEDR_MSG_MR, "get dma mr: lkey = %x\n", mr->ibmr.lkey);
 return &mr->ibmr;

err2:
 dev->ops->rdma_free_tid(dev->rdma_ctx, mr->hw_mr.itid);
err1:
 kfree(mr);
 return ERR_PTR(rc);
}
