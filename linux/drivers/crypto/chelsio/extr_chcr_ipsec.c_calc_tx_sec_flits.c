
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct ipsec_sa_entry {unsigned int kctx_len; scalar_t__ esn; } ;
struct fw_ulptx_wr {int dummy; } ;
struct cpl_tx_pkt_core {int dummy; } ;
struct chcr_ipsec_req {int dummy; } ;
struct chcr_ipsec_aadiv {int dummy; } ;
typedef int __be64 ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;


 unsigned int DIV_ROUND_UP (int,int) ;
 int is_eth_imm (struct sk_buff const*,struct ipsec_sa_entry*) ;
 unsigned int sgl_len (scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static inline unsigned int calc_tx_sec_flits(const struct sk_buff *skb,
          struct ipsec_sa_entry *sa_entry,
          bool *immediate)
{
 unsigned int kctx_len;
 unsigned int flits;
 int aadivlen;
 int hdrlen;

 kctx_len = sa_entry->kctx_len;
 hdrlen = is_eth_imm(skb, sa_entry);
 aadivlen = sa_entry->esn ? DIV_ROUND_UP(sizeof(struct chcr_ipsec_aadiv),
      16) : 0;
 aadivlen <<= 4;






 if (hdrlen) {
  *immediate = 1;
  return DIV_ROUND_UP(skb->len + hdrlen, sizeof(__be64));
 }

 flits = sgl_len(skb_shinfo(skb)->nr_frags + 1);
 flits += (sizeof(struct fw_ulptx_wr) +
    sizeof(struct chcr_ipsec_req) +
    kctx_len +
    sizeof(struct cpl_tx_pkt_core) +
    aadivlen) / sizeof(__be64);
 return flits;
}
