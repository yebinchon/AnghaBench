
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_7__ {int pa; int va; int len; } ;
struct TYPE_6__ {int pa; int va; int len; } ;
struct ocrdma_qp {TYPE_4__* pd; scalar_t__ dpp_enabled; TYPE_3__ rq; int srq; TYPE_2__ sq; int id; } ;
struct ocrdma_mqe {int dummy; } ;
struct TYPE_5__ {struct pci_dev* pdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
struct ocrdma_destroy_qp {int qp_id; } ;
struct TYPE_8__ {int num_dpp_qp; } ;


 int ENOMEM ;
 int OCRDMA_CMD_DELETE_QP ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (struct ocrdma_destroy_qp*) ;
 struct ocrdma_destroy_qp* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

int ocrdma_mbx_destroy_qp(struct ocrdma_dev *dev, struct ocrdma_qp *qp)
{
 int status = -ENOMEM;
 struct ocrdma_destroy_qp *cmd;
 struct pci_dev *pdev = dev->nic_info.pdev;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_DELETE_QP, sizeof(*cmd));
 if (!cmd)
  return status;
 cmd->qp_id = qp->id;
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (status)
  goto mbx_err;

mbx_err:
 kfree(cmd);
 if (qp->sq.va)
  dma_free_coherent(&pdev->dev, qp->sq.len, qp->sq.va, qp->sq.pa);
 if (!qp->srq && qp->rq.va)
  dma_free_coherent(&pdev->dev, qp->rq.len, qp->rq.va, qp->rq.pa);
 if (qp->dpp_enabled)
  qp->pd->num_dpp_qp++;
 return status;
}
