
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nitrox_device {int nr_queues; struct nitrox_cmdq** aqmq; int node; } ;
struct nitrox_cmdq {int qno; int instr_size; void* compl_cnt_csr_addr; void* dbell_csr_addr; struct nitrox_device* ndev; } ;
struct aqmq_command_s {int dummy; } ;


 int AQMQ_CMD_CNTX (int) ;
 int AQMQ_DRBLX (int) ;
 int AQM_Q_ALIGN_BYTES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* NITROX_CSR_ADDR (struct nitrox_device*,int ) ;
 struct nitrox_cmdq* kzalloc_node (int,int ,int ) ;
 int kzfree (struct nitrox_cmdq*) ;
 int nitrox_cmdq_init (struct nitrox_cmdq*,int ) ;
 int nitrox_free_aqm_queues (struct nitrox_device*) ;

__attribute__((used)) static int nitrox_alloc_aqm_queues(struct nitrox_device *ndev)
{
 int i, err;

 for (i = 0; i < ndev->nr_queues; i++) {
  struct nitrox_cmdq *cmdq;
  u64 offset;

  cmdq = kzalloc_node(sizeof(*cmdq), GFP_KERNEL, ndev->node);
  if (!cmdq) {
   err = -ENOMEM;
   goto aqmq_fail;
  }

  cmdq->ndev = ndev;
  cmdq->qno = i;
  cmdq->instr_size = sizeof(struct aqmq_command_s);


  offset = AQMQ_DRBLX(i);
  cmdq->dbell_csr_addr = NITROX_CSR_ADDR(ndev, offset);

  offset = AQMQ_CMD_CNTX(i);
  cmdq->compl_cnt_csr_addr = NITROX_CSR_ADDR(ndev, offset);

  err = nitrox_cmdq_init(cmdq, AQM_Q_ALIGN_BYTES);
  if (err) {
   kzfree(cmdq);
   goto aqmq_fail;
  }
  ndev->aqmq[i] = cmdq;
 }

 return 0;

aqmq_fail:
 nitrox_free_aqm_queues(ndev);
 return err;
}
