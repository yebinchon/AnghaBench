
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pvrdma_cmd_create_mr_resp {int rkey; int lkey; int mr_handle; } ;
union pvrdma_cmd_resp {struct pvrdma_cmd_create_mr_resp create_mr_resp; } ;
struct TYPE_5__ {int cmd; } ;
struct pvrdma_cmd_create_mr {int nchunks; int flags; scalar_t__ access_flags; int pd_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_create_mr create_mr; } ;
typedef int u64 ;
typedef int u32 ;
struct ib_mr {int rkey; int lkey; } ;
struct TYPE_7__ {int mr_handle; } ;
struct pvrdma_user_mr {int max_pages; struct pvrdma_user_mr* pages; int pdir; struct ib_mr ibmr; int * umem; int page_shift; TYPE_3__ mmr; } ;
struct pvrdma_dev {TYPE_2__* pdev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;
struct TYPE_8__ {int pd_handle; } ;
struct TYPE_6__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_MR_TYPE_MEM_REG ;
 int PAGE_SHIFT ;
 int PVRDMA_CMD_CREATE_MR ;
 int PVRDMA_CMD_CREATE_MR_RESP ;
 int PVRDMA_MAX_FAST_REG_PAGES ;
 int PVRDMA_MR_FLAG_FRMR ;
 int dev_warn (int *,char*,...) ;
 int kfree (struct pvrdma_user_mr*) ;
 void* kzalloc (int,int ) ;
 int memset (struct pvrdma_cmd_create_mr*,int ,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int ) ;
 int pvrdma_page_dir_cleanup (struct pvrdma_dev*,int *) ;
 int pvrdma_page_dir_init (struct pvrdma_dev*,int *,int,int) ;
 struct pvrdma_dev* to_vdev (int ) ;
 TYPE_4__* to_vpd (struct ib_pd*) ;

struct ib_mr *pvrdma_alloc_mr(struct ib_pd *pd, enum ib_mr_type mr_type,
         u32 max_num_sg, struct ib_udata *udata)
{
 struct pvrdma_dev *dev = to_vdev(pd->device);
 struct pvrdma_user_mr *mr;
 union pvrdma_cmd_req req;
 union pvrdma_cmd_resp rsp;
 struct pvrdma_cmd_create_mr *cmd = &req.create_mr;
 struct pvrdma_cmd_create_mr_resp *resp = &rsp.create_mr_resp;
 int size = max_num_sg * sizeof(u64);
 int ret;

 if (mr_type != IB_MR_TYPE_MEM_REG ||
     max_num_sg > PVRDMA_MAX_FAST_REG_PAGES)
  return ERR_PTR(-EINVAL);

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 mr->pages = kzalloc(size, GFP_KERNEL);
 if (!mr->pages) {
  ret = -ENOMEM;
  goto freemr;
 }

 ret = pvrdma_page_dir_init(dev, &mr->pdir, max_num_sg, 0);
 if (ret) {
  dev_warn(&dev->pdev->dev,
    "failed to allocate page dir for mr\n");
  ret = -ENOMEM;
  goto freepages;
 }

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_CREATE_MR;
 cmd->pd_handle = to_vpd(pd)->pd_handle;
 cmd->access_flags = 0;
 cmd->flags = PVRDMA_MR_FLAG_FRMR;
 cmd->nchunks = max_num_sg;

 ret = pvrdma_cmd_post(dev, &req, &rsp, PVRDMA_CMD_CREATE_MR_RESP);
 if (ret < 0) {
  dev_warn(&dev->pdev->dev,
    "could not create FR mem region, error: %d\n", ret);
  goto freepdir;
 }

 mr->max_pages = max_num_sg;
 mr->mmr.mr_handle = resp->mr_handle;
 mr->ibmr.lkey = resp->lkey;
 mr->ibmr.rkey = resp->rkey;
 mr->page_shift = PAGE_SHIFT;
 mr->umem = ((void*)0);

 return &mr->ibmr;

freepdir:
 pvrdma_page_dir_cleanup(dev, &mr->pdir);
freepages:
 kfree(mr->pages);
freemr:
 kfree(mr);
 return ERR_PTR(ret);
}
