
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct pvrdma_cmd_create_srq_resp {size_t srqn; } ;
union pvrdma_cmd_resp {struct pvrdma_cmd_create_srq_resp create_srq_resp; } ;
struct TYPE_12__ {scalar_t__ max_wr; scalar_t__ max_sge; int srq_limit; } ;
struct TYPE_11__ {int cmd; } ;
struct pvrdma_cmd_create_srq {scalar_t__ nchunks; int pdir_dma; TYPE_2__ attrs; int pd_handle; int srq_type; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_create_srq create_srq; } ;
typedef int ucmd ;
struct TYPE_18__ {int dir_dma; } ;
struct pvrdma_srq {scalar_t__ npages; size_t srq_handle; int umem; TYPE_8__ pdir; int ibsrq; int free; int refcnt; int lock; } ;
struct pvrdma_dev {int num_srqs; TYPE_6__* pdev; int srq_tbl_lock; TYPE_5__* dsr; struct pvrdma_srq** srq_tbl; } ;
struct pvrdma_create_srq_resp {size_t srqn; } ;
struct pvrdma_create_srq {int buf_size; int buf_addr; } ;
struct ib_udata {int dummy; } ;
struct TYPE_13__ {scalar_t__ max_wr; scalar_t__ max_sge; int srq_limit; } ;
struct ib_srq_init_attr {TYPE_3__ attr; int srq_type; } ;
struct ib_srq {int pd; int device; } ;
typedef int srq_resp ;
struct TYPE_17__ {int pd_handle; } ;
struct TYPE_16__ {int dev; } ;
struct TYPE_14__ {scalar_t__ max_srq_wr; scalar_t__ max_srq_sge; size_t max_srq; } ;
struct TYPE_15__ {TYPE_4__ caps; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IB_SRQT_BASIC ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PVRDMA_CMD_CREATE_SRQ ;
 int PVRDMA_CMD_CREATE_SRQ_RESP ;
 scalar_t__ PVRDMA_PAGE_DIR_MAX_PAGES ;
 int atomic_add_unless (int *,int,size_t) ;
 int atomic_dec (int *) ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*,...) ;
 scalar_t__ ib_copy_from_udata (struct pvrdma_create_srq*,struct ib_udata*,int) ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,struct pvrdma_create_srq_resp*,int) ;
 int ib_umem_get (struct ib_udata*,int ,int ,int ,int ) ;
 scalar_t__ ib_umem_page_count (int ) ;
 int ib_umem_release (int ) ;
 int init_completion (int *) ;
 int memset (struct pvrdma_cmd_create_srq*,int ,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int ) ;
 int pvrdma_destroy_srq (int *,struct ib_udata*) ;
 int pvrdma_page_dir_cleanup (struct pvrdma_dev*,TYPE_8__*) ;
 int pvrdma_page_dir_init (struct pvrdma_dev*,TYPE_8__*,scalar_t__,int) ;
 int pvrdma_page_dir_insert_umem (TYPE_8__*,int ,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pvrdma_dev* to_vdev (int ) ;
 TYPE_7__* to_vpd (int ) ;
 struct pvrdma_srq* to_vsrq (struct ib_srq*) ;

int pvrdma_create_srq(struct ib_srq *ibsrq, struct ib_srq_init_attr *init_attr,
        struct ib_udata *udata)
{
 struct pvrdma_srq *srq = to_vsrq(ibsrq);
 struct pvrdma_dev *dev = to_vdev(ibsrq->device);
 union pvrdma_cmd_req req;
 union pvrdma_cmd_resp rsp;
 struct pvrdma_cmd_create_srq *cmd = &req.create_srq;
 struct pvrdma_cmd_create_srq_resp *resp = &rsp.create_srq_resp;
 struct pvrdma_create_srq_resp srq_resp = {};
 struct pvrdma_create_srq ucmd;
 unsigned long flags;
 int ret;

 if (!udata) {

  dev_warn(&dev->pdev->dev,
    "no shared receive queue support for kernel client\n");
  return -EOPNOTSUPP;
 }

 if (init_attr->srq_type != IB_SRQT_BASIC) {
  dev_warn(&dev->pdev->dev,
    "shared receive queue type %d not supported\n",
    init_attr->srq_type);
  return -EINVAL;
 }

 if (init_attr->attr.max_wr > dev->dsr->caps.max_srq_wr ||
     init_attr->attr.max_sge > dev->dsr->caps.max_srq_sge) {
  dev_warn(&dev->pdev->dev,
    "shared receive queue size invalid\n");
  return -EINVAL;
 }

 if (!atomic_add_unless(&dev->num_srqs, 1, dev->dsr->caps.max_srq))
  return -ENOMEM;

 spin_lock_init(&srq->lock);
 refcount_set(&srq->refcnt, 1);
 init_completion(&srq->free);

 dev_dbg(&dev->pdev->dev,
  "create shared receive queue from user space\n");

 if (ib_copy_from_udata(&ucmd, udata, sizeof(ucmd))) {
  ret = -EFAULT;
  goto err_srq;
 }

 srq->umem = ib_umem_get(udata, ucmd.buf_addr, ucmd.buf_size, 0, 0);
 if (IS_ERR(srq->umem)) {
  ret = PTR_ERR(srq->umem);
  goto err_srq;
 }

 srq->npages = ib_umem_page_count(srq->umem);

 if (srq->npages < 0 || srq->npages > PVRDMA_PAGE_DIR_MAX_PAGES) {
  dev_warn(&dev->pdev->dev,
    "overflow pages in shared receive queue\n");
  ret = -EINVAL;
  goto err_umem;
 }

 ret = pvrdma_page_dir_init(dev, &srq->pdir, srq->npages, 0);
 if (ret) {
  dev_warn(&dev->pdev->dev,
    "could not allocate page directory\n");
  goto err_umem;
 }

 pvrdma_page_dir_insert_umem(&srq->pdir, srq->umem, 0);

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_CREATE_SRQ;
 cmd->srq_type = init_attr->srq_type;
 cmd->nchunks = srq->npages;
 cmd->pd_handle = to_vpd(ibsrq->pd)->pd_handle;
 cmd->attrs.max_wr = init_attr->attr.max_wr;
 cmd->attrs.max_sge = init_attr->attr.max_sge;
 cmd->attrs.srq_limit = init_attr->attr.srq_limit;
 cmd->pdir_dma = srq->pdir.dir_dma;

 ret = pvrdma_cmd_post(dev, &req, &rsp, PVRDMA_CMD_CREATE_SRQ_RESP);
 if (ret < 0) {
  dev_warn(&dev->pdev->dev,
    "could not create shared receive queue, error: %d\n",
    ret);
  goto err_page_dir;
 }

 srq->srq_handle = resp->srqn;
 srq_resp.srqn = resp->srqn;
 spin_lock_irqsave(&dev->srq_tbl_lock, flags);
 dev->srq_tbl[srq->srq_handle % dev->dsr->caps.max_srq] = srq;
 spin_unlock_irqrestore(&dev->srq_tbl_lock, flags);


 if (ib_copy_to_udata(udata, &srq_resp, sizeof(srq_resp))) {
  dev_warn(&dev->pdev->dev, "failed to copy back udata\n");
  pvrdma_destroy_srq(&srq->ibsrq, udata);
  return -EINVAL;
 }

 return 0;

err_page_dir:
 pvrdma_page_dir_cleanup(dev, &srq->pdir);
err_umem:
 ib_umem_release(srq->umem);
err_srq:
 atomic_dec(&dev->num_srqs);

 return ret;
}
