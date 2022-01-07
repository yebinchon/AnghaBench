
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {scalar_t__ hdr_type; } ;
struct TYPE_5__ {TYPE_3__ hdr; } ;
struct verbs_txreq {int hdr_dwords; int s_cur_size; TYPE_2__ phdr; int txreq; int sde; int wqe; } ;
struct TYPE_4__ {int device; } ;
struct rvt_qp {TYPE_1__ ibqp; int s_wqe; int srate_mbps; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_sc; struct hfi1_ahg_info* s_ahg; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_pkt_state {struct verbs_txreq* s_txreq; int pkts_sent; int wait; int opcode; struct hfi1_pportdata* ppd; struct hfi1_ibdev* dev; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_ahg_info {int dummy; } ;
typedef int pbc ;


 int ECOMM ;
 int PBC_DC_INFO_SHIFT ;
 int PBC_INSERT_BYPASS_ICRC ;
 int PBC_PACKET_BYPASS ;
 int SIZE_OF_CRC ;
 int SIZE_OF_LT ;
 int build_verbs_tx_desc (int ,int,struct verbs_txreq*,struct hfi1_ahg_info*,int) ;
 int create_pbc (struct hfi1_pportdata*,int,int ,int,int) ;
 int dd_from_ibdev (int ) ;
 int hfi1_dbg_should_fault_tx (struct rvt_qp*,int ) ;
 int hfi1_fault_tx (struct rvt_qp*,int ,int) ;
 int hfi1_get_16b_padding (int,int) ;
 int hfi1_put_txreq (struct verbs_txreq*) ;
 int ib_is_sc5 (int) ;
 scalar_t__ likely (int) ;
 int sc_to_vlt (int ,int) ;
 int sdma_send_txreq (int ,int ,int *,int ) ;
 int sdma_txreq_built (int *) ;
 int trace_sdma_output_ibhdr (int ,TYPE_3__*,int) ;
 scalar_t__ unlikely (int) ;
 int update_hcrc (int ,int) ;
 int update_tx_opstats (struct rvt_qp*,struct hfi1_pkt_state*,int) ;
 int wait_kmem (struct hfi1_ibdev*,struct rvt_qp*,struct hfi1_pkt_state*) ;

int hfi1_verbs_send_dma(struct rvt_qp *qp, struct hfi1_pkt_state *ps,
   u64 pbc)
{
 struct hfi1_qp_priv *priv = qp->priv;
 struct hfi1_ahg_info *ahg_info = priv->s_ahg;
 u32 hdrwords = ps->s_txreq->hdr_dwords;
 u32 len = ps->s_txreq->s_cur_size;
 u32 plen;
 struct hfi1_ibdev *dev = ps->dev;
 struct hfi1_pportdata *ppd = ps->ppd;
 struct verbs_txreq *tx;
 u8 sc5 = priv->s_sc;
 int ret;
 u32 dwords;

 if (ps->s_txreq->phdr.hdr.hdr_type) {
  u8 extra_bytes = hfi1_get_16b_padding((hdrwords << 2), len);

  dwords = (len + extra_bytes + (SIZE_OF_CRC << 2) +
     SIZE_OF_LT) >> 2;
 } else {
  dwords = (len + 3) >> 2;
 }
 plen = hdrwords + dwords + sizeof(pbc) / 4;

 tx = ps->s_txreq;
 if (!sdma_txreq_built(&tx->txreq)) {
  if (likely(pbc == 0)) {
   u32 vl = sc_to_vlt(dd_from_ibdev(qp->ibqp.device), sc5);



   if (ps->s_txreq->phdr.hdr.hdr_type)
    pbc |= PBC_PACKET_BYPASS |
           PBC_INSERT_BYPASS_ICRC;
   else
    pbc |= (ib_is_sc5(sc5) << PBC_DC_INFO_SHIFT);

   pbc = create_pbc(ppd,
      pbc,
      qp->srate_mbps,
      vl,
      plen);

   if (unlikely(hfi1_dbg_should_fault_tx(qp, ps->opcode)))
    pbc = hfi1_fault_tx(qp, ps->opcode, pbc);
   else

    pbc = update_hcrc(ps->opcode, pbc);
  }
  tx->wqe = qp->s_wqe;
  ret = build_verbs_tx_desc(tx->sde, len, tx, ahg_info, pbc);
  if (unlikely(ret))
   goto bail_build;
 }
 ret = sdma_send_txreq(tx->sde, ps->wait, &tx->txreq, ps->pkts_sent);
 if (unlikely(ret < 0)) {
  if (ret == -ECOMM)
   goto bail_ecomm;
  return ret;
 }

 update_tx_opstats(qp, ps, plen);
 trace_sdma_output_ibhdr(dd_from_ibdev(qp->ibqp.device),
    &ps->s_txreq->phdr.hdr, ib_is_sc5(sc5));
 return ret;

bail_ecomm:

 return 0;
bail_build:
 ret = wait_kmem(dev, qp, ps);
 if (!ret) {

  hfi1_put_txreq(ps->s_txreq);
  ps->s_txreq = ((void*)0);
 }
 return ret;
}
