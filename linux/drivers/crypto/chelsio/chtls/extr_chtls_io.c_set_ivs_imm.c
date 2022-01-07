
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_4__ {int iv; } ;
struct TYPE_5__ {TYPE_1__ tls; } ;
struct TYPE_6__ {TYPE_2__ ulp; } ;


 int CIPHER_BLOCK_SIZE ;
 scalar_t__ KEY_ON_MEM_SZ ;
 scalar_t__ MAX_IMM_OFLD_TX_DATA_WR_LEN ;
 int TLS_WR_CPL_LEN ;
 TYPE_3__* ULP_SKB_CB (struct sk_buff const*) ;
 int data_sgl_len (struct sk_buff const*) ;
 int nos_ivs (struct sock*,int ) ;

__attribute__((used)) static int set_ivs_imm(struct sock *sk, const struct sk_buff *skb)
{
 int ivs_size = nos_ivs(sk, skb->len) * CIPHER_BLOCK_SIZE;
 int hlen = TLS_WR_CPL_LEN + data_sgl_len(skb);

 if ((hlen + KEY_ON_MEM_SZ + ivs_size) <
     MAX_IMM_OFLD_TX_DATA_WR_LEN) {
  ULP_SKB_CB(skb)->ulp.tls.iv = 1;
  return 1;
 }
 ULP_SKB_CB(skb)->ulp.tls.iv = 0;
 return 0;
}
