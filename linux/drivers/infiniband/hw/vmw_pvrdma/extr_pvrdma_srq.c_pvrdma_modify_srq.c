
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int srq_limit; } ;
struct TYPE_4__ {int cmd; } ;
struct pvrdma_cmd_modify_srq {int attr_mask; TYPE_2__ attrs; int srq_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_modify_srq modify_srq; } ;
struct pvrdma_srq {int srq_handle; } ;
struct pvrdma_dev {TYPE_3__* pdev; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_attr {int srq_limit; } ;
struct ib_srq {int device; } ;
typedef enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;
struct TYPE_6__ {int dev; } ;


 int EINVAL ;
 int IB_SRQ_LIMIT ;
 int PVRDMA_CMD_MODIFY_SRQ ;
 int dev_warn (int *,char*,int) ;
 int memset (struct pvrdma_cmd_modify_srq*,int ,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,int *,int ) ;
 struct pvrdma_dev* to_vdev (int ) ;
 struct pvrdma_srq* to_vsrq (struct ib_srq*) ;

int pvrdma_modify_srq(struct ib_srq *ibsrq, struct ib_srq_attr *attr,
        enum ib_srq_attr_mask attr_mask, struct ib_udata *udata)
{
 struct pvrdma_srq *vsrq = to_vsrq(ibsrq);
 union pvrdma_cmd_req req;
 struct pvrdma_cmd_modify_srq *cmd = &req.modify_srq;
 struct pvrdma_dev *dev = to_vdev(ibsrq->device);
 int ret;


 if (!(attr_mask & IB_SRQ_LIMIT))
  return -EINVAL;

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_MODIFY_SRQ;
 cmd->srq_handle = vsrq->srq_handle;
 cmd->attrs.srq_limit = attr->srq_limit;
 cmd->attr_mask = attr_mask;

 ret = pvrdma_cmd_post(dev, &req, ((void*)0), 0);
 if (ret < 0) {
  dev_warn(&dev->pdev->dev,
    "could not modify shared receive queue, error: %d\n",
    ret);

  return -EINVAL;
 }

 return ret;
}
