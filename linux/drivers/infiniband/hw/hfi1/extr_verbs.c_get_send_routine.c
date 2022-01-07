
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct verbs_txreq {int s_cur_size; int txreq; } ;
struct TYPE_2__ {int qp_type; int device; } ;
struct rvt_qp {int pmtu; TYPE_1__ ibqp; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_running_pkt_size; int s_iowait; } ;
struct hfi1_pkt_state {int opcode; struct verbs_txreq* s_txreq; } ;
struct hfi1_devdata {int flags; int process_dma_send; int process_pio_send; } ;
typedef int send_routine ;


 int BIT (int) ;
 int HFI1_HAS_SEND_DMA ;





 int OPMASK ;
 struct hfi1_devdata* dd_from_ibdev (int ) ;
 int iowait_sdma_pending (int *) ;
 int min (int ,int ) ;
 int* pio_opmask ;
 int piothreshold ;
 int sdma_txreq_built (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline send_routine get_send_routine(struct rvt_qp *qp,
         struct hfi1_pkt_state *ps)
{
 struct hfi1_devdata *dd = dd_from_ibdev(qp->ibqp.device);
 struct hfi1_qp_priv *priv = qp->priv;
 struct verbs_txreq *tx = ps->s_txreq;

 if (unlikely(!(dd->flags & HFI1_HAS_SEND_DMA)))
  return dd->process_pio_send;
 switch (qp->ibqp.qp_type) {
 case 130:
  return dd->process_pio_send;
 case 132:
 case 128:
  break;
 case 129:
 case 131:
  priv->s_running_pkt_size =
   (tx->s_cur_size + priv->s_running_pkt_size) / 2;
  if (piothreshold &&
      priv->s_running_pkt_size <= min(piothreshold, qp->pmtu) &&
      (BIT(ps->opcode & OPMASK) & pio_opmask[ps->opcode >> 5]) &&
      iowait_sdma_pending(&priv->s_iowait) == 0 &&
      !sdma_txreq_built(&tx->txreq))
   return dd->process_pio_send;
  break;
 default:
  break;
 }
 return dd->process_dma_send;
}
