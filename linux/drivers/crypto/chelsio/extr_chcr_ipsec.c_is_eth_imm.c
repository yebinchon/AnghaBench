
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct ipsec_sa_entry {unsigned int kctx_len; scalar_t__ esn; } ;
struct fw_ulptx_wr {int dummy; } ;
struct cpl_tx_pkt {int dummy; } ;
struct chcr_ipsec_req {int dummy; } ;
struct chcr_ipsec_aadiv {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int MAX_IMM_TX_PKT_LEN ;

__attribute__((used)) static inline int is_eth_imm(const struct sk_buff *skb,
        struct ipsec_sa_entry *sa_entry)
{
 unsigned int kctx_len;
 int hdrlen;

 kctx_len = sa_entry->kctx_len;
 hdrlen = sizeof(struct fw_ulptx_wr) +
   sizeof(struct chcr_ipsec_req) + kctx_len;

 hdrlen += sizeof(struct cpl_tx_pkt);
 if (sa_entry->esn)
  hdrlen += (DIV_ROUND_UP(sizeof(struct chcr_ipsec_aadiv), 16)
      << 4);
 if (skb->len <= MAX_IMM_TX_PKT_LEN - hdrlen)
  return hdrlen;
 return 0;
}
