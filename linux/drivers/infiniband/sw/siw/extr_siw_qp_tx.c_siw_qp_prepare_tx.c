
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_17__ {size_t rkey; int raddr; TYPE_10__* sge; } ;
struct siw_wqe {int processed; scalar_t__ bytes; TYPE_11__ sqe; } ;
struct TYPE_29__ {void* ddp_to; } ;
struct TYPE_28__ {scalar_t__ ddp_mo; } ;
struct TYPE_20__ {int ddp_rdmap_ctrl; int mpa_len; } ;
struct TYPE_27__ {int crc; } ;
struct TYPE_26__ {void* sink_to; void* sink_stag; } ;
struct TYPE_25__ {void* sink_to; void* sink_stag; } ;
struct TYPE_24__ {int crc; } ;
struct TYPE_23__ {void* inval_stag; } ;
struct TYPE_22__ {size_t ddp_qn; int ddp_mo; void* ddp_msn; } ;
struct TYPE_18__ {int crc; } ;
struct TYPE_30__ {void* read_size; void* source_to; void* source_stag; void* sink_to; void* sink_stag; int ddp_mo; void* ddp_msn; void* ddp_qn; int rsvd; } ;
struct TYPE_19__ {TYPE_8__ c_tagged; TYPE_7__ c_untagged; TYPE_14__ ctrl; TYPE_6__ write_pkt; TYPE_5__ rresp; TYPE_4__ rwrite; TYPE_3__ send_pkt; TYPE_2__ send_inv; TYPE_1__ send; TYPE_12__ rreq_pkt; TYPE_9__ rreq; } ;
struct siw_iwarp_tx {size_t* ddp_msn; int ctrl_len; int use_sendpage; scalar_t__ zcopy_tx; scalar_t__ pbl_idx; scalar_t__ sge_off; scalar_t__ sge_idx; scalar_t__ mpa_crc_hd; TYPE_13__ pkt; scalar_t__ ctrl_sent; struct siw_wqe wqe_active; } ;
struct iwarp_send_inv {int dummy; } ;
struct iwarp_send {int dummy; } ;
struct iwarp_rdma_write {int dummy; } ;
struct iwarp_rdma_rresp {int dummy; } ;
struct iwarp_rdma_rreq {int dummy; } ;
struct iwarp_ctrl {int dummy; } ;
struct TYPE_21__ {int ctrl; } ;
struct TYPE_16__ {size_t lkey; size_t length; int laddr; } ;


 int DDP_FLAG_TAGGED ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int MAX_HDR_INLINE ;
 int MPA_CRC_SIZE ;
 int MPA_HDR_SIZE ;
 int PKT_COMPLETE ;
 int PKT_FRAGMENTED ;
 size_t RDMAP_RDMA_READ_REQ ;
 size_t RDMAP_RDMA_READ_RESP ;
 size_t RDMAP_RDMA_WRITE ;
 size_t RDMAP_SEND ;
 size_t RDMAP_SEND_INVAL ;
 size_t RDMAP_SEND_SE ;
 size_t RDMAP_SEND_SE_INVAL ;
 size_t RDMAP_UNTAGGED_QN_RDMA_READ ;
 size_t RDMAP_UNTAGGED_QN_SEND ;
 scalar_t__ SENDPAGE_THRESH ;






 int SIW_WQE_SIGNALLED ;
 int SIW_WQE_SOLICITED ;
 void* cpu_to_be32 (size_t) ;
 void* cpu_to_be64 (int ) ;
 int crypto_shash_final (scalar_t__,int *) ;
 int crypto_shash_init (scalar_t__) ;
 scalar_t__ crypto_shash_update (scalar_t__,int *,int) ;
 void* htonl (size_t) ;
 int htons (int) ;
 TYPE_15__* iwarp_pktinfo ;
 int memcpy (TYPE_14__*,int *,int) ;
 int siw_dbg_qp (int ,char*,int) ;
 int siw_try_1seg (struct siw_iwarp_tx*,char*) ;
 int tx_flags (struct siw_wqe*) ;
 int tx_qp (struct siw_iwarp_tx*) ;
 int tx_type (struct siw_wqe*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int siw_qp_prepare_tx(struct siw_iwarp_tx *c_tx)
{
 struct siw_wqe *wqe = &c_tx->wqe_active;
 char *crc = ((void*)0);
 int data = 0;

 switch (tx_type(wqe)) {
 case 133:
 case 132:
  memcpy(&c_tx->pkt.ctrl,
         &iwarp_pktinfo[RDMAP_RDMA_READ_REQ].ctrl,
         sizeof(struct iwarp_ctrl));

  c_tx->pkt.rreq.rsvd = 0;
  c_tx->pkt.rreq.ddp_qn = htonl(RDMAP_UNTAGGED_QN_RDMA_READ);
  c_tx->pkt.rreq.ddp_msn =
   htonl(++c_tx->ddp_msn[RDMAP_UNTAGGED_QN_RDMA_READ]);
  c_tx->pkt.rreq.ddp_mo = 0;
  c_tx->pkt.rreq.sink_stag = htonl(wqe->sqe.sge[0].lkey);
  c_tx->pkt.rreq.sink_to =
   cpu_to_be64(wqe->sqe.sge[0].laddr);
  c_tx->pkt.rreq.source_stag = htonl(wqe->sqe.rkey);
  c_tx->pkt.rreq.source_to = cpu_to_be64(wqe->sqe.raddr);
  c_tx->pkt.rreq.read_size = htonl(wqe->sqe.sge[0].length);

  c_tx->ctrl_len = sizeof(struct iwarp_rdma_rreq);
  crc = (char *)&c_tx->pkt.rreq_pkt.crc;
  break;

 case 130:
  if (tx_flags(wqe) & SIW_WQE_SOLICITED)
   memcpy(&c_tx->pkt.ctrl,
          &iwarp_pktinfo[RDMAP_SEND_SE].ctrl,
          sizeof(struct iwarp_ctrl));
  else
   memcpy(&c_tx->pkt.ctrl, &iwarp_pktinfo[RDMAP_SEND].ctrl,
          sizeof(struct iwarp_ctrl));

  c_tx->pkt.send.ddp_qn = RDMAP_UNTAGGED_QN_SEND;
  c_tx->pkt.send.ddp_msn =
   htonl(++c_tx->ddp_msn[RDMAP_UNTAGGED_QN_SEND]);
  c_tx->pkt.send.ddp_mo = 0;

  c_tx->pkt.send_inv.inval_stag = 0;

  c_tx->ctrl_len = sizeof(struct iwarp_send);

  crc = (char *)&c_tx->pkt.send_pkt.crc;
  data = siw_try_1seg(c_tx, crc);
  break;

 case 129:
  if (tx_flags(wqe) & SIW_WQE_SOLICITED)
   memcpy(&c_tx->pkt.ctrl,
          &iwarp_pktinfo[RDMAP_SEND_SE_INVAL].ctrl,
          sizeof(struct iwarp_ctrl));
  else
   memcpy(&c_tx->pkt.ctrl,
          &iwarp_pktinfo[RDMAP_SEND_INVAL].ctrl,
          sizeof(struct iwarp_ctrl));

  c_tx->pkt.send.ddp_qn = RDMAP_UNTAGGED_QN_SEND;
  c_tx->pkt.send.ddp_msn =
   htonl(++c_tx->ddp_msn[RDMAP_UNTAGGED_QN_SEND]);
  c_tx->pkt.send.ddp_mo = 0;

  c_tx->pkt.send_inv.inval_stag = cpu_to_be32(wqe->sqe.rkey);

  c_tx->ctrl_len = sizeof(struct iwarp_send_inv);

  crc = (char *)&c_tx->pkt.send_pkt.crc;
  data = siw_try_1seg(c_tx, crc);
  break;

 case 128:
  memcpy(&c_tx->pkt.ctrl, &iwarp_pktinfo[RDMAP_RDMA_WRITE].ctrl,
         sizeof(struct iwarp_ctrl));

  c_tx->pkt.rwrite.sink_stag = htonl(wqe->sqe.rkey);
  c_tx->pkt.rwrite.sink_to = cpu_to_be64(wqe->sqe.raddr);
  c_tx->ctrl_len = sizeof(struct iwarp_rdma_write);

  crc = (char *)&c_tx->pkt.write_pkt.crc;
  data = siw_try_1seg(c_tx, crc);
  break;

 case 131:
  memcpy(&c_tx->pkt.ctrl,
         &iwarp_pktinfo[RDMAP_RDMA_READ_RESP].ctrl,
         sizeof(struct iwarp_ctrl));


  c_tx->pkt.rresp.sink_stag = cpu_to_be32(wqe->sqe.rkey);
  c_tx->pkt.rresp.sink_to = cpu_to_be64(wqe->sqe.raddr);

  c_tx->ctrl_len = sizeof(struct iwarp_rdma_rresp);

  crc = (char *)&c_tx->pkt.write_pkt.crc;
  data = siw_try_1seg(c_tx, crc);
  break;

 default:
  siw_dbg_qp(tx_qp(c_tx), "stale wqe type %d\n", tx_type(wqe));
  return -EOPNOTSUPP;
 }
 if (unlikely(data < 0))
  return data;

 c_tx->ctrl_sent = 0;

 if (data <= MAX_HDR_INLINE) {
  if (data) {
   wqe->processed = data;

   c_tx->pkt.ctrl.mpa_len =
    htons(c_tx->ctrl_len + data - MPA_HDR_SIZE);


   data += -(int)data & 0x3;

   crc += data;
   c_tx->ctrl_len += data;

   if (!(c_tx->pkt.ctrl.ddp_rdmap_ctrl & DDP_FLAG_TAGGED))
    c_tx->pkt.c_untagged.ddp_mo = 0;
   else
    c_tx->pkt.c_tagged.ddp_to =
     cpu_to_be64(wqe->sqe.raddr);
  }

  *(u32 *)crc = 0;



  if (c_tx->mpa_crc_hd) {
   crypto_shash_init(c_tx->mpa_crc_hd);
   if (crypto_shash_update(c_tx->mpa_crc_hd,
      (u8 *)&c_tx->pkt,
      c_tx->ctrl_len))
    return -EINVAL;
   crypto_shash_final(c_tx->mpa_crc_hd, (u8 *)crc);
  }
  c_tx->ctrl_len += MPA_CRC_SIZE;

  return PKT_COMPLETE;
 }
 c_tx->ctrl_len += MPA_CRC_SIZE;
 c_tx->sge_idx = 0;
 c_tx->sge_off = 0;
 c_tx->pbl_idx = 0;
 if (c_tx->zcopy_tx && wqe->bytes >= SENDPAGE_THRESH &&
     !(tx_flags(wqe) & SIW_WQE_SIGNALLED))
  c_tx->use_sendpage = 1;
 else
  c_tx->use_sendpage = 0;

 return PKT_FRAGMENTED;
}
