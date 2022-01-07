
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_srq {int id; struct ocrdma_pd* pd; } ;
struct TYPE_2__ {int device; } ;
struct ocrdma_pd {TYPE_1__ ibpd; } ;
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_modify_srq {int limit_max_rqe; int id; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_srq_attr {int srq_limit; } ;


 int ENOMEM ;
 int OCRDMA_CMD_MODIFY_SRQ ;
 int OCRDMA_MODIFY_SRQ_LIMIT_SHIFT ;
 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 int kfree (struct ocrdma_modify_srq*) ;
 struct ocrdma_modify_srq* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

int ocrdma_mbx_modify_srq(struct ocrdma_srq *srq, struct ib_srq_attr *srq_attr)
{
 int status = -ENOMEM;
 struct ocrdma_modify_srq *cmd;
 struct ocrdma_pd *pd = srq->pd;
 struct ocrdma_dev *dev = get_ocrdma_dev(pd->ibpd.device);

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_MODIFY_SRQ, sizeof(*cmd));
 if (!cmd)
  return status;
 cmd->id = srq->id;
 cmd->limit_max_rqe |= srq_attr->srq_limit <<
     OCRDMA_MODIFY_SRQ_LIMIT_SHIFT;
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 kfree(cmd);
 return status;
}
