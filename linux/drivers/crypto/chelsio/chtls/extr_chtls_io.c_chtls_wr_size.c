
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct chtls_sock {int sk; } ;
struct TYPE_2__ {int nr_frags; } ;


 scalar_t__ KEY_ON_MEM_SZ ;
 int TLS_WR_CPL_LEN ;
 scalar_t__ ivs_size (int ,struct sk_buff const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;
 int skb_ulp_tls_iv_imm (struct sk_buff const*) ;

__attribute__((used)) static int chtls_wr_size(struct chtls_sock *csk, const struct sk_buff *skb,
    bool size)
{
 int wr_size;

 wr_size = TLS_WR_CPL_LEN;
 wr_size += KEY_ON_MEM_SZ;
 wr_size += ivs_size(csk->sk, skb);

 if (size)
  return wr_size;


 if (!skb_ulp_tls_iv_imm(skb))
  skb_shinfo(skb)->nr_frags++;

 return wr_size;
}
