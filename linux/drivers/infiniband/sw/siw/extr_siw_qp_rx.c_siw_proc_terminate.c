
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mpa_len; } ;
union iwarp_hdr {TYPE_3__ ctrl; } ;
typedef int u8 ;
typedef int u16 ;
typedef int term_info ;
struct sk_buff {int dummy; } ;
struct iwarp_terminate {scalar_t__ flag_m; scalar_t__ flag_d; scalar_t__ flag_r; int ddp_mo; int ddp_msn; int ddp_qn; } ;
struct TYPE_4__ {struct iwarp_terminate terminate; } ;
struct siw_rx_stream {scalar_t__* ddp_msn; int skb_new; int skb_offset; int skb_copied; int fpdu_part_rcvd; int fpdu_part_rem; TYPE_1__ hdr; struct sk_buff* skb; } ;
struct siw_qp {struct siw_rx_stream rx_stream; } ;
struct iwarp_ctrl_tagged {int dummy; } ;
struct iwarp_ctrl {int dummy; } ;
typedef enum rdma_opcode { ____Placeholder_rdma_opcode } rdma_opcode ;
struct TYPE_5__ {int hdr_len; } ;


 int ECONNRESET ;
 int MPA_CRC_SIZE ;
 int RDMAP_TERMINATE ;
 size_t RDMAP_UNTAGGED_QN_TERMINATE ;
 int __rdmap_get_opcode (TYPE_3__*) ;
 scalar_t__ __rdmap_term_ecode (struct iwarp_terminate*) ;
 scalar_t__ __rdmap_term_etype (struct iwarp_terminate*) ;
 scalar_t__ __rdmap_term_layer (struct iwarp_terminate*) ;
 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 TYPE_2__* iwarp_pktinfo ;
 int memset (int *,int ,int) ;
 int pr_warn (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int siw_dbg_qp (struct siw_qp*,char*,int,int ,char*) ;
 int skb_copy_bits (struct sk_buff*,int,int *,int) ;

int siw_proc_terminate(struct siw_qp *qp)
{
 struct siw_rx_stream *srx = &qp->rx_stream;
 struct sk_buff *skb = srx->skb;
 struct iwarp_terminate *term = &srx->hdr.terminate;
 union iwarp_hdr term_info;
 u8 *infop = (u8 *)&term_info;
 enum rdma_opcode op;
 u16 to_copy = sizeof(struct iwarp_ctrl);

 pr_warn("siw: got TERMINATE. layer %d, type %d, code %d\n",
  __rdmap_term_layer(term), __rdmap_term_etype(term),
  __rdmap_term_ecode(term));

 if (be32_to_cpu(term->ddp_qn) != RDMAP_UNTAGGED_QN_TERMINATE ||
     be32_to_cpu(term->ddp_msn) !=
      qp->rx_stream.ddp_msn[RDMAP_UNTAGGED_QN_TERMINATE] ||
     be32_to_cpu(term->ddp_mo) != 0) {
  pr_warn("siw: rx bogus TERM [QN x%08x, MSN x%08x, MO x%08x]\n",
   be32_to_cpu(term->ddp_qn), be32_to_cpu(term->ddp_msn),
   be32_to_cpu(term->ddp_mo));
  return -ECONNRESET;
 }



 if (!term->flag_m)
  return -ECONNRESET;




 if (srx->skb_new < sizeof(struct iwarp_ctrl_tagged))
  return -ECONNRESET;

 memset(infop, 0, sizeof(term_info));

 skb_copy_bits(skb, srx->skb_offset, infop, to_copy);

 op = __rdmap_get_opcode(&term_info.ctrl);
 if (op >= RDMAP_TERMINATE)
  goto out;

 infop += to_copy;
 srx->skb_offset += to_copy;
 srx->skb_new -= to_copy;
 srx->skb_copied += to_copy;
 srx->fpdu_part_rcvd += to_copy;
 srx->fpdu_part_rem -= to_copy;

 to_copy = iwarp_pktinfo[op].hdr_len - to_copy;


 if (to_copy + MPA_CRC_SIZE > srx->skb_new)
  return -ECONNRESET;

 skb_copy_bits(skb, srx->skb_offset, infop, to_copy);

 if (term->flag_r) {
  siw_dbg_qp(qp, "TERM reports RDMAP hdr type %u, len %u (%s)\n",
      op, be16_to_cpu(term_info.ctrl.mpa_len),
      term->flag_m ? "valid" : "invalid");
 } else if (term->flag_d) {
  siw_dbg_qp(qp, "TERM reports DDP hdr type %u, len %u (%s)\n",
      op, be16_to_cpu(term_info.ctrl.mpa_len),
      term->flag_m ? "valid" : "invalid");
 }
out:
 srx->skb_new -= to_copy;
 srx->skb_offset += to_copy;
 srx->skb_copied += to_copy;
 srx->fpdu_part_rcvd += to_copy;
 srx->fpdu_part_rem -= to_copy;

 return -ECONNRESET;
}
