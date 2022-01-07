
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int qlen; } ;
struct nitrox_cmdq {int qsize; int instr_size; int backlog_count; int pending_count; int backlog_qflush; int backlog_head; int response_head; int backlog_qlock; int resp_qlock; int cmd_qlock; scalar_t__ write_idx; scalar_t__ unalign_dma; scalar_t__ dma; scalar_t__ unalign_base; scalar_t__ base; struct nitrox_device* ndev; } ;


 int DEV (struct nitrox_device*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ PTR_ALIGN (scalar_t__,int) ;
 int atomic_set (int *,int ) ;
 int backlog_qflush_work ;
 scalar_t__ dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nitrox_cmdq_init(struct nitrox_cmdq *cmdq, int align_bytes)
{
 struct nitrox_device *ndev = cmdq->ndev;

 cmdq->qsize = (ndev->qlen * cmdq->instr_size) + align_bytes;
 cmdq->unalign_base = dma_alloc_coherent(DEV(ndev), cmdq->qsize,
      &cmdq->unalign_dma,
      GFP_KERNEL);
 if (!cmdq->unalign_base)
  return -ENOMEM;

 cmdq->dma = PTR_ALIGN(cmdq->unalign_dma, align_bytes);
 cmdq->base = cmdq->unalign_base + (cmdq->dma - cmdq->unalign_dma);
 cmdq->write_idx = 0;

 spin_lock_init(&cmdq->cmd_qlock);
 spin_lock_init(&cmdq->resp_qlock);
 spin_lock_init(&cmdq->backlog_qlock);

 INIT_LIST_HEAD(&cmdq->response_head);
 INIT_LIST_HEAD(&cmdq->backlog_head);
 INIT_WORK(&cmdq->backlog_qflush, backlog_qflush_work);

 atomic_set(&cmdq->pending_count, 0);
 atomic_set(&cmdq->backlog_count, 0);
 return 0;
}
