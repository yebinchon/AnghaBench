
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nitrox_softreq {int tstamp; int status; int instr; struct nitrox_device* ndev; } ;
struct TYPE_2__ {int posted; } ;
struct nitrox_device {TYPE_1__ stats; int qlen; } ;
struct nitrox_cmdq {int write_idx; int instr_size; int cmd_qlock; int dbell_csr_addr; int * base; } ;


 int REQ_POSTED ;
 int atomic64_inc (int *) ;
 int atomic_set (int *,int ) ;
 int dma_wmb () ;
 int incr_index (int,int,int ) ;
 int jiffies ;
 int memcpy (int *,int *,int) ;
 int response_list_add (struct nitrox_softreq*,struct nitrox_cmdq*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int writeq (int,int ) ;

__attribute__((used)) static void post_se_instr(struct nitrox_softreq *sr,
     struct nitrox_cmdq *cmdq)
{
 struct nitrox_device *ndev = sr->ndev;
 int idx;
 u8 *ent;

 spin_lock_bh(&cmdq->cmd_qlock);

 idx = cmdq->write_idx;

 ent = cmdq->base + (idx * cmdq->instr_size);
 memcpy(ent, &sr->instr, cmdq->instr_size);

 atomic_set(&sr->status, REQ_POSTED);
 response_list_add(sr, cmdq);
 sr->tstamp = jiffies;

 dma_wmb();


 writeq(1, cmdq->dbell_csr_addr);

 cmdq->write_idx = incr_index(idx, 1, ndev->qlen);

 spin_unlock_bh(&cmdq->cmd_qlock);


 atomic64_inc(&ndev->stats.posted);
}
