
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmd; } ;
struct pvrdma_cmd_destroy_srq {int srq_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_destroy_srq destroy_srq; } ;
struct pvrdma_srq {int srq_handle; } ;
struct pvrdma_dev {TYPE_2__* pdev; } ;
struct ib_udata {int dummy; } ;
struct ib_srq {int device; } ;
struct TYPE_4__ {int dev; } ;


 int PVRDMA_CMD_DESTROY_SRQ ;
 int dev_warn (int *,char*,int) ;
 int memset (struct pvrdma_cmd_destroy_srq*,int ,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,int *,int ) ;
 int pvrdma_free_srq (struct pvrdma_dev*,struct pvrdma_srq*) ;
 struct pvrdma_dev* to_vdev (int ) ;
 struct pvrdma_srq* to_vsrq (struct ib_srq*) ;

void pvrdma_destroy_srq(struct ib_srq *srq, struct ib_udata *udata)
{
 struct pvrdma_srq *vsrq = to_vsrq(srq);
 union pvrdma_cmd_req req;
 struct pvrdma_cmd_destroy_srq *cmd = &req.destroy_srq;
 struct pvrdma_dev *dev = to_vdev(srq->device);
 int ret;

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_DESTROY_SRQ;
 cmd->srq_handle = vsrq->srq_handle;

 ret = pvrdma_cmd_post(dev, &req, ((void*)0), 0);
 if (ret < 0)
  dev_warn(&dev->pdev->dev,
    "destroy shared receive queue failed, error: %d\n",
    ret);

 pvrdma_free_srq(dev, vsrq);
}
