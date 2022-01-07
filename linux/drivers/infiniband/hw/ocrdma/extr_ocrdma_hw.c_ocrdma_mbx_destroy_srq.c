
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_3__ {int pa; int va; int len; } ;
struct ocrdma_srq {TYPE_1__ rq; int id; } ;
struct ocrdma_mqe {int dummy; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct ocrdma_dev {TYPE_2__ nic_info; } ;
struct ocrdma_destroy_srq {int id; } ;


 int OCRDMA_CMD_DELETE_SRQ ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (struct ocrdma_destroy_srq*) ;
 struct ocrdma_destroy_srq* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

void ocrdma_mbx_destroy_srq(struct ocrdma_dev *dev, struct ocrdma_srq *srq)
{
 struct ocrdma_destroy_srq *cmd;
 struct pci_dev *pdev = dev->nic_info.pdev;
 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_DELETE_SRQ, sizeof(*cmd));
 if (!cmd)
  return;
 cmd->id = srq->id;
 ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (srq->rq.va)
  dma_free_coherent(&pdev->dev, srq->rq.len,
      srq->rq.va, srq->rq.pa);
 kfree(cmd);
}
