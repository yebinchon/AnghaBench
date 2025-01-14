
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* u64 ;
struct qedr_pd {int pd_id; } ;
struct TYPE_11__ {int pbl_size; int two_layered; } ;
struct TYPE_12__ {TYPE_3__* pbl_table; TYPE_4__ pbl_info; } ;
struct TYPE_9__ {int itid; int key; int local_read; int local_write; int remote_read; int remote_write; int remote_atomic; int mw_bind; int zbva; int phy_mr; int dma_mr; void* vaddr; void* length; int fbo; int page_size_log; int pbl_page_size_log; int pbl_two_level; int pbl_ptr; int pd; int tid_type; } ;
struct ib_mr {int lkey; int rkey; } ;
struct qedr_mr {TYPE_7__ info; TYPE_2__ hw_mr; struct ib_mr ibmr; int umem; int type; } ;
struct qedr_dev {int rdma_ctx; TYPE_1__* ops; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct TYPE_10__ {int pa; } ;
struct TYPE_8__ {int (* rdma_alloc_tid ) (int ,int*) ;int (* rdma_register_tid ) (int ,TYPE_2__*) ;int (* rdma_free_tid ) (int ,int) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int,...) ;
 int DP_ERR (struct qedr_dev*,char*,int) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 scalar_t__ IS_ERR (int ) ;
 int PAGE_SHIFT ;
 int QEDR_MR_USER ;
 int QEDR_MSG_MR ;
 int QED_RDMA_TID_REGISTERED_MR ;
 struct qedr_dev* get_qedr_dev (int ) ;
 struct qedr_pd* get_qedr_pd (struct ib_pd*) ;
 int ib_umem_get (struct ib_udata*,void*,void*,int,int ) ;
 int ib_umem_offset (int ) ;
 int ib_umem_page_count (int ) ;
 int ilog2 (int ) ;
 int init_mr_info (struct qedr_dev*,TYPE_7__*,int ,int) ;
 int kfree (struct qedr_mr*) ;
 struct qedr_mr* kzalloc (int,int ) ;
 int qedr_free_pbl (struct qedr_dev*,TYPE_4__*,TYPE_3__*) ;
 int qedr_populate_pbls (struct qedr_dev*,int ,TYPE_3__*,TYPE_4__*,int ) ;
 int stub1 (int ,int*) ;
 int stub2 (int ,TYPE_2__*) ;
 int stub3 (int ,int) ;

struct ib_mr *qedr_reg_user_mr(struct ib_pd *ibpd, u64 start, u64 len,
          u64 usr_addr, int acc, struct ib_udata *udata)
{
 struct qedr_dev *dev = get_qedr_dev(ibpd->device);
 struct qedr_mr *mr;
 struct qedr_pd *pd;
 int rc = -ENOMEM;

 pd = get_qedr_pd(ibpd);
 DP_DEBUG(dev, QEDR_MSG_MR,
   "qedr_register user mr pd = %d start = %lld, len = %lld, usr_addr = %lld, acc = %d\n",
   pd->pd_id, start, len, usr_addr, acc);

 if (acc & IB_ACCESS_REMOTE_WRITE && !(acc & IB_ACCESS_LOCAL_WRITE))
  return ERR_PTR(-EINVAL);

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(rc);

 mr->type = QEDR_MR_USER;

 mr->umem = ib_umem_get(udata, start, len, acc, 0);
 if (IS_ERR(mr->umem)) {
  rc = -EFAULT;
  goto err0;
 }

 rc = init_mr_info(dev, &mr->info, ib_umem_page_count(mr->umem), 1);
 if (rc)
  goto err1;

 qedr_populate_pbls(dev, mr->umem, mr->info.pbl_table,
      &mr->info.pbl_info, PAGE_SHIFT);

 rc = dev->ops->rdma_alloc_tid(dev->rdma_ctx, &mr->hw_mr.itid);
 if (rc) {
  DP_ERR(dev, "roce alloc tid returned an error %d\n", rc);
  goto err1;
 }


 mr->hw_mr.tid_type = QED_RDMA_TID_REGISTERED_MR;
 mr->hw_mr.key = 0;
 mr->hw_mr.pd = pd->pd_id;
 mr->hw_mr.local_read = 1;
 mr->hw_mr.local_write = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
 mr->hw_mr.remote_read = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
 mr->hw_mr.remote_write = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
 mr->hw_mr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
 mr->hw_mr.mw_bind = 0;
 mr->hw_mr.pbl_ptr = mr->info.pbl_table[0].pa;
 mr->hw_mr.pbl_two_level = mr->info.pbl_info.two_layered;
 mr->hw_mr.pbl_page_size_log = ilog2(mr->info.pbl_info.pbl_size);
 mr->hw_mr.page_size_log = PAGE_SHIFT;
 mr->hw_mr.fbo = ib_umem_offset(mr->umem);
 mr->hw_mr.length = len;
 mr->hw_mr.vaddr = usr_addr;
 mr->hw_mr.zbva = 0;
 mr->hw_mr.phy_mr = 0;
 mr->hw_mr.dma_mr = 0;

 rc = dev->ops->rdma_register_tid(dev->rdma_ctx, &mr->hw_mr);
 if (rc) {
  DP_ERR(dev, "roce register tid returned an error %d\n", rc);
  goto err2;
 }

 mr->ibmr.lkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;
 if (mr->hw_mr.remote_write || mr->hw_mr.remote_read ||
     mr->hw_mr.remote_atomic)
  mr->ibmr.rkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;

 DP_DEBUG(dev, QEDR_MSG_MR, "register user mr lkey: %x\n",
   mr->ibmr.lkey);
 return &mr->ibmr;

err2:
 dev->ops->rdma_free_tid(dev->rdma_ctx, mr->hw_mr.itid);
err1:
 qedr_free_pbl(dev, &mr->info.pbl_info, mr->info.pbl_table);
err0:
 kfree(mr);
 return ERR_PTR(rc);
}
