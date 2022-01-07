
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmd; } ;
struct pvrdma_cmd_destroy_mr {int mr_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_destroy_mr destroy_mr; } ;
struct TYPE_5__ {int mr_handle; } ;
struct pvrdma_user_mr {struct pvrdma_user_mr* pages; int umem; int pdir; TYPE_2__ mmr; } ;
struct pvrdma_dev {TYPE_3__* pdev; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int device; } ;
struct TYPE_6__ {int dev; } ;


 int PVRDMA_CMD_DESTROY_MR ;
 int dev_warn (int *,char*,int) ;
 int ib_umem_release (int ) ;
 int kfree (struct pvrdma_user_mr*) ;
 int memset (struct pvrdma_cmd_destroy_mr*,int ,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,int *,int ) ;
 int pvrdma_page_dir_cleanup (struct pvrdma_dev*,int *) ;
 struct pvrdma_dev* to_vdev (int ) ;
 struct pvrdma_user_mr* to_vmr (struct ib_mr*) ;

int pvrdma_dereg_mr(struct ib_mr *ibmr, struct ib_udata *udata)
{
 struct pvrdma_user_mr *mr = to_vmr(ibmr);
 struct pvrdma_dev *dev = to_vdev(ibmr->device);
 union pvrdma_cmd_req req;
 struct pvrdma_cmd_destroy_mr *cmd = &req.destroy_mr;
 int ret;

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_DESTROY_MR;
 cmd->mr_handle = mr->mmr.mr_handle;
 ret = pvrdma_cmd_post(dev, &req, ((void*)0), 0);
 if (ret < 0)
  dev_warn(&dev->pdev->dev,
    "could not deregister mem region, error: %d\n", ret);

 pvrdma_page_dir_cleanup(dev, &mr->pdir);
 ib_umem_release(mr->umem);

 kfree(mr->pages);
 kfree(mr);

 return 0;
}
