
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nps_pkt_instr {int dummy; } ;
struct nitrox_device {int nr_queues; struct nitrox_cmdq* pkt_inq; int node; } ;
struct nitrox_cmdq {int qno; int instr_size; void* compl_cnt_csr_addr; void* dbell_csr_addr; struct nitrox_device* ndev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* NITROX_CSR_ADDR (struct nitrox_device*,int ) ;
 int NPS_PKT_IN_INSTR_BAOFF_DBELLX (int) ;
 int NPS_PKT_SLC_CNTSX (int) ;
 int PKTIN_Q_ALIGN_BYTES ;
 struct nitrox_cmdq* kcalloc_node (int,int,int ,int ) ;
 int nitrox_cmdq_init (struct nitrox_cmdq*,int ) ;
 int nitrox_free_pktin_queues (struct nitrox_device*) ;

__attribute__((used)) static int nitrox_alloc_pktin_queues(struct nitrox_device *ndev)
{
 int i, err;

 ndev->pkt_inq = kcalloc_node(ndev->nr_queues,
         sizeof(struct nitrox_cmdq),
         GFP_KERNEL, ndev->node);
 if (!ndev->pkt_inq)
  return -ENOMEM;

 for (i = 0; i < ndev->nr_queues; i++) {
  struct nitrox_cmdq *cmdq;
  u64 offset;

  cmdq = &ndev->pkt_inq[i];
  cmdq->ndev = ndev;
  cmdq->qno = i;
  cmdq->instr_size = sizeof(struct nps_pkt_instr);


  offset = NPS_PKT_IN_INSTR_BAOFF_DBELLX(i);
  cmdq->dbell_csr_addr = NITROX_CSR_ADDR(ndev, offset);

  offset = NPS_PKT_SLC_CNTSX(i);
  cmdq->compl_cnt_csr_addr = NITROX_CSR_ADDR(ndev, offset);

  err = nitrox_cmdq_init(cmdq, PKTIN_Q_ALIGN_BYTES);
  if (err)
   goto pktq_fail;
 }
 return 0;

pktq_fail:
 nitrox_free_pktin_queues(ndev);
 return err;
}
