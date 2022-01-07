
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_allocation; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ TX_HEADER_LEN ;
 int ULPCB_FLAG_NEED_HDR ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 int skb_entail (struct sock*,struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *get_tx_skb(struct sock *sk, int size)
{
 struct sk_buff *skb;

 skb = alloc_skb(size + TX_HEADER_LEN, sk->sk_allocation);
 if (likely(skb)) {
  skb_reserve(skb, TX_HEADER_LEN);
  skb_entail(sk, skb, ULPCB_FLAG_NEED_HDR);
  skb_reset_transport_header(skb);
 }
 return skb;
}
