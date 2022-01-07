
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct chtls_sock {struct sk_buff* wr_skb_head; } ;
struct TYPE_2__ {struct sk_buff* next_wr; } ;


 TYPE_1__* WR_SKB_CB (struct sk_buff*) ;
 scalar_t__ likely (struct sk_buff*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;

__attribute__((used)) static struct sk_buff *dequeue_wr(struct sock *sk)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);
 struct sk_buff *skb = csk->wr_skb_head;

 if (likely(skb)) {

  csk->wr_skb_head = WR_SKB_CB(skb)->next_wr;
  WR_SKB_CB(skb)->next_wr = ((void*)0);
 }
 return skb;
}
