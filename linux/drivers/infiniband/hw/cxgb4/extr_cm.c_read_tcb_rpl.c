
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cpl_get_tcb_rpl {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct c4iw_ep {int rx_pdu_out_cnt; TYPE_1__ com; int srqe_idx; int hwtid; } ;
struct c4iw_dev {int dummy; } ;
typedef int __be64 ;


 int ABORT_REQ_IN_PROGRESS ;
 unsigned int GET_TID (struct cpl_get_tcb_rpl*) ;
 int PEER_ABORT_IN_PROGRESS ;
 int TCB_RQ_START_S ;
 int TCB_RQ_START_W ;
 int TCB_T_FLAGS_W ;
 int TF_RX_PDU_OUT_S ;
 int TF_RX_PDU_OUT_V (int) ;
 int WARN_ONCE (int,char*) ;
 int c4iw_put_ep (TYPE_1__*) ;
 struct cpl_get_tcb_rpl* cplhdr (struct sk_buff*) ;
 int finish_peer_abort (struct c4iw_dev*,struct c4iw_ep*) ;
 struct c4iw_ep* get_ep_from_tid (struct c4iw_dev*,unsigned int) ;
 int pr_debug (char*,struct c4iw_ep*,int ,int ) ;
 int read_tcb (struct c4iw_ep*) ;
 int send_abort_req (struct c4iw_ep*) ;
 int t4_tcb_get_field32 (int *,int ,int ,int ) ;
 int t4_tcb_get_field64 (int *,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int read_tcb_rpl(struct c4iw_dev *dev, struct sk_buff *skb)
{
 struct cpl_get_tcb_rpl *rpl = cplhdr(skb);
 __be64 *tcb = (__be64 *)(rpl + 1);
 unsigned int tid = GET_TID(rpl);
 struct c4iw_ep *ep;
 u64 t_flags_64;
 u32 rx_pdu_out;

 ep = get_ep_from_tid(dev, tid);
 if (!ep)
  return 0;
 t_flags_64 = t4_tcb_get_field64(tcb, TCB_T_FLAGS_W);
 rx_pdu_out = (t_flags_64 & TF_RX_PDU_OUT_V(1)) >> TF_RX_PDU_OUT_S;

 c4iw_put_ep(&ep->com);
 c4iw_put_ep(&ep->com);


 if (rx_pdu_out) {
  if (++ep->rx_pdu_out_cnt >= 2) {
   WARN_ONCE(1, "tcb re-read() reached the guard limit, finishing the cleanup\n");
   goto cleanup;
  }
  read_tcb(ep);
  return 0;
 }

 ep->srqe_idx = t4_tcb_get_field32(tcb, TCB_RQ_START_W, TCB_RQ_START_W,
   TCB_RQ_START_S);
cleanup:
 pr_debug("ep %p tid %u %016x\n", ep, ep->hwtid, ep->srqe_idx);

 if (test_bit(PEER_ABORT_IN_PROGRESS, &ep->com.flags))
  finish_peer_abort(dev, ep);
 else if (test_bit(ABORT_REQ_IN_PROGRESS, &ep->com.flags))
  send_abort_req(ep);
 else
  WARN_ONCE(1, "unexpected state!");

 return 0;
}
