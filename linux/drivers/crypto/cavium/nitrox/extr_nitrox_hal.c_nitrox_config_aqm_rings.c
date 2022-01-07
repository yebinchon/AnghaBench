
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aqmq_qsz {unsigned long long value; int host_queue_size; } ;
union aqmq_drbl {unsigned long long value; int dbell_count; } ;
union aqmq_cmp_thr {unsigned long long value; int commands_completed_threshold; } ;
typedef int u64 ;
struct nitrox_device {int nr_queues; int qlen; struct nitrox_cmdq** aqmq; } ;
struct nitrox_cmdq {unsigned long long dma; } ;


 int AQMQ_BADRX (int) ;
 int AQMQ_CMP_THRX (int) ;
 int AQMQ_DRBLX (int) ;
 int AQMQ_NXT_CMDX (int) ;
 int AQMQ_QSZX (int) ;
 int enable_aqm_ring (struct nitrox_device*,int) ;
 int nitrox_write_csr (struct nitrox_device*,int ,unsigned long long) ;
 int reset_aqm_ring (struct nitrox_device*,int) ;

void nitrox_config_aqm_rings(struct nitrox_device *ndev)
{
 int ring;

 for (ring = 0; ring < ndev->nr_queues; ring++) {
  struct nitrox_cmdq *cmdq = ndev->aqmq[ring];
  union aqmq_drbl drbl;
  union aqmq_qsz qsize;
  union aqmq_cmp_thr cmp_thr;
  u64 offset;


  reset_aqm_ring(ndev, ring);


  offset = AQMQ_DRBLX(ring);
  drbl.value = 0;
  drbl.dbell_count = 0xFFFFFFFF;
  nitrox_write_csr(ndev, offset, drbl.value);




  offset = AQMQ_NXT_CMDX(ring);
  nitrox_write_csr(ndev, offset, 0ULL);


  offset = AQMQ_BADRX(ring);
  nitrox_write_csr(ndev, offset, cmdq->dma);


  offset = AQMQ_QSZX(ring);
  qsize.value = 0;
  qsize.host_queue_size = ndev->qlen;
  nitrox_write_csr(ndev, offset, qsize.value);


  offset = AQMQ_CMP_THRX(ring);
  cmp_thr.value = 0;
  cmp_thr.commands_completed_threshold = 1;
  nitrox_write_csr(ndev, offset, cmp_thr.value);


  enable_aqm_ring(ndev, ring);
 }
}
