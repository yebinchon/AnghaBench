
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;
struct nitrox_cmdq {scalar_t__ instr_size; scalar_t__ qsize; scalar_t__ dma; scalar_t__ unalign_dma; int * base; int * unalign_base; int * compl_cnt_csr_addr; int * dbell_csr_addr; int backlog_qflush; struct nitrox_device* ndev; } ;


 int DEV (struct nitrox_device*) ;
 int cancel_work_sync (int *) ;
 int dma_free_coherent (int ,scalar_t__,int *,scalar_t__) ;
 int nitrox_cmdq_reset (struct nitrox_cmdq*) ;

__attribute__((used)) static void nitrox_cmdq_cleanup(struct nitrox_cmdq *cmdq)
{
 struct nitrox_device *ndev;

 if (!cmdq)
  return;

 if (!cmdq->unalign_base)
  return;

 ndev = cmdq->ndev;
 cancel_work_sync(&cmdq->backlog_qflush);

 dma_free_coherent(DEV(ndev), cmdq->qsize,
     cmdq->unalign_base, cmdq->unalign_dma);
 nitrox_cmdq_reset(cmdq);

 cmdq->dbell_csr_addr = ((void*)0);
 cmdq->compl_cnt_csr_addr = ((void*)0);
 cmdq->unalign_base = ((void*)0);
 cmdq->base = ((void*)0);
 cmdq->unalign_dma = 0;
 cmdq->dma = 0;
 cmdq->qsize = 0;
 cmdq->instr_size = 0;
}
