
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct qedr_pd {int pd_id; } ;
struct TYPE_9__ {int itid; int key; int local_read; int mw_bind; int zbva; int phy_mr; int dma_mr; scalar_t__ vaddr; scalar_t__ length; scalar_t__ fbo; int pbl_page_size_log; int pbl_two_level; scalar_t__ pbl_ptr; scalar_t__ remote_atomic; scalar_t__ remote_write; scalar_t__ remote_read; scalar_t__ local_write; int pd; int tid_type; } ;
struct TYPE_7__ {int lkey; int rkey; } ;
struct TYPE_6__ {int pbl_size; int two_layered; } ;
struct TYPE_10__ {TYPE_1__ pbl_info; } ;
struct qedr_mr {TYPE_4__ hw_mr; TYPE_2__ ibmr; TYPE_5__ info; int type; struct qedr_dev* dev; } ;
struct qedr_dev {int rdma_ctx; TYPE_3__* ops; } ;
struct ib_pd {int device; } ;
struct TYPE_8__ {int (* rdma_alloc_tid ) (int ,int*) ;int (* rdma_register_tid ) (int ,TYPE_4__*) ;int (* rdma_free_tid ) (int ,int) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int,...) ;
 int DP_ERR (struct qedr_dev*,char*,int) ;
 int ENOMEM ;
 struct qedr_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int QEDR_MR_FRMR ;
 int QEDR_MSG_MR ;
 int QED_RDMA_TID_FMR ;
 struct qedr_dev* get_qedr_dev (int ) ;
 struct qedr_pd* get_qedr_pd (struct ib_pd*) ;
 int ilog2 (int ) ;
 int init_mr_info (struct qedr_dev*,TYPE_5__*,int,int) ;
 int kfree (struct qedr_mr*) ;
 struct qedr_mr* kzalloc (int,int ) ;
 int stub1 (int ,int*) ;
 int stub2 (int ,TYPE_4__*) ;
 int stub3 (int ,int) ;

__attribute__((used)) static struct qedr_mr *__qedr_alloc_mr(struct ib_pd *ibpd,
           int max_page_list_len)
{
 struct qedr_pd *pd = get_qedr_pd(ibpd);
 struct qedr_dev *dev = get_qedr_dev(ibpd->device);
 struct qedr_mr *mr;
 int rc = -ENOMEM;

 DP_DEBUG(dev, QEDR_MSG_MR,
   "qedr_alloc_frmr pd = %d max_page_list_len= %d\n", pd->pd_id,
   max_page_list_len);

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(rc);

 mr->dev = dev;
 mr->type = QEDR_MR_FRMR;

 rc = init_mr_info(dev, &mr->info, max_page_list_len, 1);
 if (rc)
  goto err0;

 rc = dev->ops->rdma_alloc_tid(dev->rdma_ctx, &mr->hw_mr.itid);
 if (rc) {
  DP_ERR(dev, "roce alloc tid returned an error %d\n", rc);
  goto err0;
 }


 mr->hw_mr.tid_type = QED_RDMA_TID_FMR;
 mr->hw_mr.key = 0;
 mr->hw_mr.pd = pd->pd_id;
 mr->hw_mr.local_read = 1;
 mr->hw_mr.local_write = 0;
 mr->hw_mr.remote_read = 0;
 mr->hw_mr.remote_write = 0;
 mr->hw_mr.remote_atomic = 0;
 mr->hw_mr.mw_bind = 0;
 mr->hw_mr.pbl_ptr = 0;
 mr->hw_mr.pbl_two_level = mr->info.pbl_info.two_layered;
 mr->hw_mr.pbl_page_size_log = ilog2(mr->info.pbl_info.pbl_size);
 mr->hw_mr.fbo = 0;
 mr->hw_mr.length = 0;
 mr->hw_mr.vaddr = 0;
 mr->hw_mr.zbva = 0;
 mr->hw_mr.phy_mr = 1;
 mr->hw_mr.dma_mr = 0;

 rc = dev->ops->rdma_register_tid(dev->rdma_ctx, &mr->hw_mr);
 if (rc) {
  DP_ERR(dev, "roce register tid returned an error %d\n", rc);
  goto err1;
 }

 mr->ibmr.lkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;
 mr->ibmr.rkey = mr->ibmr.lkey;

 DP_DEBUG(dev, QEDR_MSG_MR, "alloc frmr: %x\n", mr->ibmr.lkey);
 return mr;

err1:
 dev->ops->rdma_free_tid(dev->rdma_ctx, mr->hw_mr.itid);
err0:
 kfree(mr);
 return ERR_PTR(rc);
}
