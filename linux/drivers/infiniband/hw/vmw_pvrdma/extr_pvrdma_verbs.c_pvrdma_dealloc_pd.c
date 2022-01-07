
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cmd; } ;
struct pvrdma_cmd_destroy_pd {int pd_handle; TYPE_2__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_destroy_pd destroy_pd; } ;
struct pvrdma_dev {int num_pds; TYPE_1__* pdev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct TYPE_6__ {int pd_handle; } ;
struct TYPE_4__ {int dev; } ;


 int PVRDMA_CMD_DESTROY_PD ;
 int atomic_dec (int *) ;
 int dev_warn (int *,char*,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,int *,int ) ;
 struct pvrdma_dev* to_vdev (int ) ;
 TYPE_3__* to_vpd (struct ib_pd*) ;

void pvrdma_dealloc_pd(struct ib_pd *pd, struct ib_udata *udata)
{
 struct pvrdma_dev *dev = to_vdev(pd->device);
 union pvrdma_cmd_req req = {};
 struct pvrdma_cmd_destroy_pd *cmd = &req.destroy_pd;
 int ret;

 cmd->hdr.cmd = PVRDMA_CMD_DESTROY_PD;
 cmd->pd_handle = to_vpd(pd)->pd_handle;

 ret = pvrdma_cmd_post(dev, &req, ((void*)0), 0);
 if (ret)
  dev_warn(&dev->pdev->dev,
    "could not dealloc protection domain, error: %d\n",
    ret);

 atomic_dec(&dev->num_pds);
}
