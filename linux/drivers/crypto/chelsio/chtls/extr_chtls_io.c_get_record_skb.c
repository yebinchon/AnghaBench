
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_allocation; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int type; } ;
struct chtls_sock {TYPE_3__ tlshws; } ;
struct TYPE_5__ {int ofld; int type; } ;
struct TYPE_6__ {TYPE_1__ tls; } ;
struct TYPE_8__ {TYPE_2__ ulp; } ;


 scalar_t__ KEY_ON_MEM_SZ ;
 scalar_t__ TX_TLSHDR_LEN ;
 int ULPCB_FLAG_NEED_HDR ;
 TYPE_4__* ULP_SKB_CB (struct sk_buff*) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 scalar_t__ max_ivs_size (struct sock*,int) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int skb_entail (struct sock*,struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *get_record_skb(struct sock *sk, int size, bool zcopy)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);
 struct sk_buff *skb;

 skb = alloc_skb(((zcopy ? 0 : size) + TX_TLSHDR_LEN +
   KEY_ON_MEM_SZ + max_ivs_size(sk, size)),
   sk->sk_allocation);
 if (likely(skb)) {
  skb_reserve(skb, (TX_TLSHDR_LEN +
       KEY_ON_MEM_SZ + max_ivs_size(sk, size)));
  skb_entail(sk, skb, ULPCB_FLAG_NEED_HDR);
  skb_reset_transport_header(skb);
  ULP_SKB_CB(skb)->ulp.tls.ofld = 1;
  ULP_SKB_CB(skb)->ulp.tls.type = csk->tlshws.type;
 }
 return skb;
}
