
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ peeked; } ;
struct fw_ofld_tx_data_wr {int dummy; } ;
struct chtls_sock {scalar_t__ ulp_mode; } ;
struct TYPE_2__ {int flags; } ;


 int MAX_IMM_OFLD_TX_DATA_WR_LEN ;
 int MAX_IMM_ULPTX_WR_LEN ;
 int ULPCB_FLAG_NEED_HDR ;
 scalar_t__ ULP_MODE_TLS ;
 TYPE_1__* ULP_SKB_CB (struct sk_buff const*) ;
 scalar_t__ chtls_wr_size (struct chtls_sock*,struct sk_buff const*,int) ;
 scalar_t__ likely (int) ;
 scalar_t__ skb_ulp_tls_inline (struct sk_buff const*) ;

__attribute__((used)) static bool is_ofld_imm(struct chtls_sock *csk, const struct sk_buff *skb)
{
 int length = skb->len;

 if (skb->peeked || skb->len > MAX_IMM_ULPTX_WR_LEN)
  return 0;

 if (likely(ULP_SKB_CB(skb)->flags & ULPCB_FLAG_NEED_HDR)) {

  if (csk->ulp_mode == ULP_MODE_TLS &&
      skb_ulp_tls_inline(skb))
   length += chtls_wr_size(csk, skb, 1);
  else
   length += sizeof(struct fw_ofld_tx_data_wr);

  return length <= MAX_IMM_OFLD_TX_DATA_WR_LEN;
 }
 return 1;
}
