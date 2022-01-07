
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pvrdma_qp {int ibqp; } ;
struct pvrdma_dev {scalar_t__* qp_tbl; TYPE_1__* pdev; } ;
struct pvrdma_cqe {int qp; int network_hdr_type; int vendor_err; int port_num; int dlid_path_bits; int sl; int slid; int pkey_index; int wc_flags; int src_qp; int imm_data; int byte_len; int wr_id; int status; int opcode; } ;
struct TYPE_9__ {int cqe; int device; } ;
struct pvrdma_cq {int cq_handle; TYPE_4__ ibcq; TYPE_3__* ring_state; } ;
struct TYPE_7__ {int imm_data; } ;
struct ib_wc {int network_hdr_type; int vendor_err; int port_num; int dlid_path_bits; int sl; int slid; int pkey_index; int wc_flags; int src_qp; TYPE_2__ ex; int byte_len; int * qp; int wr_id; int status; int opcode; } ;
struct TYPE_10__ {int cons_head; } ;
struct TYPE_8__ {TYPE_5__ rx; } ;
struct TYPE_6__ {int dev; } ;


 int EAGAIN ;
 int PVRDMA_INVALID_IDX ;
 int PVRDMA_UAR_CQ_POLL ;
 int dev_err (int *,char*) ;
 struct pvrdma_cqe* get_cqe (struct pvrdma_cq*,unsigned int) ;
 int pvrdma_idx_ring_has_data (TYPE_5__*,int ,unsigned int*) ;
 int pvrdma_idx_ring_inc (int *,int ) ;
 int pvrdma_wc_flags_to_ib (int ) ;
 int pvrdma_wc_opcode_to_ib (int ) ;
 int pvrdma_wc_status_to_ib (int ) ;
 int pvrdma_write_uar_cq (struct pvrdma_dev*,int) ;
 int rmb () ;
 struct pvrdma_dev* to_vdev (int ) ;

__attribute__((used)) static int pvrdma_poll_one(struct pvrdma_cq *cq, struct pvrdma_qp **cur_qp,
      struct ib_wc *wc)
{
 struct pvrdma_dev *dev = to_vdev(cq->ibcq.device);
 int has_data;
 unsigned int head;
 bool tried = 0;
 struct pvrdma_cqe *cqe;

retry:
 has_data = pvrdma_idx_ring_has_data(&cq->ring_state->rx,
         cq->ibcq.cqe, &head);
 if (has_data == 0) {
  if (tried)
   return -EAGAIN;

  pvrdma_write_uar_cq(dev, cq->cq_handle | PVRDMA_UAR_CQ_POLL);

  tried = 1;
  goto retry;
 } else if (has_data == PVRDMA_INVALID_IDX) {
  dev_err(&dev->pdev->dev, "CQ ring state invalid\n");
  return -EAGAIN;
 }

 cqe = get_cqe(cq, head);


 rmb();
 if (dev->qp_tbl[cqe->qp & 0xffff])
  *cur_qp = (struct pvrdma_qp *)dev->qp_tbl[cqe->qp & 0xffff];
 else
  return -EAGAIN;

 wc->opcode = pvrdma_wc_opcode_to_ib(cqe->opcode);
 wc->status = pvrdma_wc_status_to_ib(cqe->status);
 wc->wr_id = cqe->wr_id;
 wc->qp = &(*cur_qp)->ibqp;
 wc->byte_len = cqe->byte_len;
 wc->ex.imm_data = cqe->imm_data;
 wc->src_qp = cqe->src_qp;
 wc->wc_flags = pvrdma_wc_flags_to_ib(cqe->wc_flags);
 wc->pkey_index = cqe->pkey_index;
 wc->slid = cqe->slid;
 wc->sl = cqe->sl;
 wc->dlid_path_bits = cqe->dlid_path_bits;
 wc->port_num = cqe->port_num;
 wc->vendor_err = cqe->vendor_err;
 wc->network_hdr_type = cqe->network_hdr_type;


 pvrdma_idx_ring_inc(&cq->ring_state->rx.cons_head, cq->ibcq.cqe);

 return 0;
}
