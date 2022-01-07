
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct pvrdma_cmd_create_mr_resp {int rkey; int lkey; int mr_handle; } ;
union pvrdma_cmd_resp {struct pvrdma_cmd_create_mr_resp create_mr_resp; } ;
struct TYPE_12__ {int cmd; } ;
struct pvrdma_cmd_create_mr {int access_flags; int nchunks; int pdir_dma; int pd_handle; scalar_t__ length; scalar_t__ start; TYPE_3__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_create_mr create_mr; } ;
typedef scalar_t__ u64 ;
struct TYPE_16__ {int dir_dma; } ;
struct ib_mr {int rkey; int lkey; } ;
struct TYPE_14__ {int mr_handle; scalar_t__ size; scalar_t__ iova; } ;
struct pvrdma_user_mr {TYPE_7__ pdir; struct ib_mr ibmr; TYPE_5__ mmr; struct ib_umem* umem; } ;
struct pvrdma_dev {TYPE_4__* pdev; TYPE_2__* dsr; } ;
struct ib_umem {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct TYPE_15__ {int pd_handle; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_10__ {scalar_t__ max_mr_size; } ;
struct TYPE_11__ {TYPE_1__ caps; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_mr* ERR_CAST (struct ib_umem*) ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ib_umem*) ;
 int PVRDMA_CMD_CREATE_MR ;
 int PVRDMA_CMD_CREATE_MR_RESP ;
 int PVRDMA_PAGE_DIR_MAX_PAGES ;
 int dev_warn (int *,char*,...) ;
 struct ib_umem* ib_umem_get (struct ib_udata*,scalar_t__,scalar_t__,int,int ) ;
 int ib_umem_num_pages (struct ib_umem*) ;
 int ib_umem_release (struct ib_umem*) ;
 int kfree (struct pvrdma_user_mr*) ;
 struct pvrdma_user_mr* kzalloc (int,int ) ;
 int memset (struct pvrdma_cmd_create_mr*,int ,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int ) ;
 int pvrdma_page_dir_cleanup (struct pvrdma_dev*,TYPE_7__*) ;
 int pvrdma_page_dir_init (struct pvrdma_dev*,TYPE_7__*,int,int) ;
 int pvrdma_page_dir_insert_umem (TYPE_7__*,struct ib_umem*,int ) ;
 struct pvrdma_dev* to_vdev (int ) ;
 TYPE_6__* to_vpd (struct ib_pd*) ;

struct ib_mr *pvrdma_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
     u64 virt_addr, int access_flags,
     struct ib_udata *udata)
{
 struct pvrdma_dev *dev = to_vdev(pd->device);
 struct pvrdma_user_mr *mr = ((void*)0);
 struct ib_umem *umem;
 union pvrdma_cmd_req req;
 union pvrdma_cmd_resp rsp;
 struct pvrdma_cmd_create_mr *cmd = &req.create_mr;
 struct pvrdma_cmd_create_mr_resp *resp = &rsp.create_mr_resp;
 int ret, npages;

 if (length == 0 || length > dev->dsr->caps.max_mr_size) {
  dev_warn(&dev->pdev->dev, "invalid mem region length\n");
  return ERR_PTR(-EINVAL);
 }

 umem = ib_umem_get(udata, start, length, access_flags, 0);
 if (IS_ERR(umem)) {
  dev_warn(&dev->pdev->dev,
    "could not get umem for mem region\n");
  return ERR_CAST(umem);
 }

 npages = ib_umem_num_pages(umem);
 if (npages < 0 || npages > PVRDMA_PAGE_DIR_MAX_PAGES) {
  dev_warn(&dev->pdev->dev, "overflow %d pages in mem region\n",
    npages);
  ret = -EINVAL;
  goto err_umem;
 }

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr) {
  ret = -ENOMEM;
  goto err_umem;
 }

 mr->mmr.iova = virt_addr;
 mr->mmr.size = length;
 mr->umem = umem;

 ret = pvrdma_page_dir_init(dev, &mr->pdir, npages, 0);
 if (ret) {
  dev_warn(&dev->pdev->dev,
    "could not allocate page directory\n");
  goto err_umem;
 }

 ret = pvrdma_page_dir_insert_umem(&mr->pdir, mr->umem, 0);
 if (ret)
  goto err_pdir;

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_CREATE_MR;
 cmd->start = start;
 cmd->length = length;
 cmd->pd_handle = to_vpd(pd)->pd_handle;
 cmd->access_flags = access_flags;
 cmd->nchunks = npages;
 cmd->pdir_dma = mr->pdir.dir_dma;

 ret = pvrdma_cmd_post(dev, &req, &rsp, PVRDMA_CMD_CREATE_MR_RESP);
 if (ret < 0) {
  dev_warn(&dev->pdev->dev,
    "could not register mem region, error: %d\n", ret);
  goto err_pdir;
 }

 mr->mmr.mr_handle = resp->mr_handle;
 mr->ibmr.lkey = resp->lkey;
 mr->ibmr.rkey = resp->rkey;

 return &mr->ibmr;

err_pdir:
 pvrdma_page_dir_cleanup(dev, &mr->pdir);
err_umem:
 ib_umem_release(umem);
 kfree(mr);

 return ERR_PTR(ret);
}
