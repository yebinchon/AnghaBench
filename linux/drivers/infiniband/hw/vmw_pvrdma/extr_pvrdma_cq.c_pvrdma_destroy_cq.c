
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmd; } ;
struct pvrdma_cmd_destroy_cq {size_t cq_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_destroy_cq destroy_cq; } ;
struct pvrdma_dev {int num_cqs; int cq_tbl_lock; int ** cq_tbl; TYPE_2__* pdev; } ;
struct pvrdma_cq {size_t cq_handle; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int device; } ;
struct TYPE_4__ {int dev; } ;


 int PVRDMA_CMD_DESTROY_CQ ;
 int atomic_dec (int *) ;
 int dev_warn (int *,char*,int) ;
 int memset (struct pvrdma_cmd_destroy_cq*,int ,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,int *,int ) ;
 int pvrdma_free_cq (struct pvrdma_dev*,struct pvrdma_cq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pvrdma_cq* to_vcq (struct ib_cq*) ;
 struct pvrdma_dev* to_vdev (int ) ;

void pvrdma_destroy_cq(struct ib_cq *cq, struct ib_udata *udata)
{
 struct pvrdma_cq *vcq = to_vcq(cq);
 union pvrdma_cmd_req req;
 struct pvrdma_cmd_destroy_cq *cmd = &req.destroy_cq;
 struct pvrdma_dev *dev = to_vdev(cq->device);
 unsigned long flags;
 int ret;

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_DESTROY_CQ;
 cmd->cq_handle = vcq->cq_handle;

 ret = pvrdma_cmd_post(dev, &req, ((void*)0), 0);
 if (ret < 0)
  dev_warn(&dev->pdev->dev,
    "could not destroy completion queue, error: %d\n",
    ret);


 spin_lock_irqsave(&dev->cq_tbl_lock, flags);
 dev->cq_tbl[vcq->cq_handle] = ((void*)0);
 spin_unlock_irqrestore(&dev->cq_tbl_lock, flags);

 pvrdma_free_cq(dev, vcq);
 atomic_dec(&dev->num_cqs);
}
