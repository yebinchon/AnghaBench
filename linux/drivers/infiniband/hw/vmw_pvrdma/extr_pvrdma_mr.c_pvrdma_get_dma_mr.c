
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
struct pvrdma_cmd_create_mr {int access_flags; int flags; int pd_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_create_mr create_mr; } ;
struct ib_mr {int rkey; int lkey; } ;
struct TYPE_7__ {int mr_handle; } ;
struct pvrdma_user_mr {struct ib_mr ibmr; TYPE_3__ mmr; } ;
struct pvrdma_dev {TYPE_2__* pdev; } ;
struct ib_pd {int device; } ;
struct TYPE_8__ {int pd_handle; } ;
struct TYPE_6__ {int dev; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int PVRDMA_CMD_CREATE_MR ;
 int PVRDMA_CMD_CREATE_MR_RESP ;
 int PVRDMA_MR_FLAG_DMA ;
 int dev_warn (int *,char*,int) ;
 int kfree (struct pvrdma_user_mr*) ;
 struct pvrdma_user_mr* kzalloc (int,int ) ;
 int memset (struct pvrdma_cmd_create_mr*,int ,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int ) ;
 struct pvrdma_dev* to_vdev (int ) ;
 TYPE_4__* to_vpd (struct ib_pd*) ;

struct ib_mr *pvrdma_get_dma_mr(struct ib_pd *pd, int acc)
{
 struct pvrdma_dev *dev = to_vdev(pd->device);
 struct pvrdma_user_mr *mr;
 union pvrdma_cmd_req req;
 union pvrdma_cmd_resp rsp;
 struct pvrdma_cmd_create_mr *cmd = &req.create_mr;
 struct pvrdma_cmd_create_mr_resp *resp = &rsp.create_mr_resp;
 int ret;


 if (acc & ~IB_ACCESS_LOCAL_WRITE) {
  dev_warn(&dev->pdev->dev,
    "unsupported dma mr access flags %#x\n", acc);
  return ERR_PTR(-EOPNOTSUPP);
 }

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_CREATE_MR;
 cmd->pd_handle = to_vpd(pd)->pd_handle;
 cmd->access_flags = acc;
 cmd->flags = PVRDMA_MR_FLAG_DMA;

 ret = pvrdma_cmd_post(dev, &req, &rsp, PVRDMA_CMD_CREATE_MR_RESP);
 if (ret < 0) {
  dev_warn(&dev->pdev->dev,
    "could not get DMA mem region, error: %d\n", ret);
  kfree(mr);
  return ERR_PTR(ret);
 }

 mr->mmr.mr_handle = resp->mr_handle;
 mr->ibmr.lkey = resp->lkey;
 mr->ibmr.rkey = resp->rkey;

 return &mr->ibmr;
}
