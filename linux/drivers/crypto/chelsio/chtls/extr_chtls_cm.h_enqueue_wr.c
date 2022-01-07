
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct chtls_sock {struct sk_buff* wr_skb_tail; struct sk_buff* wr_skb_head; } ;
struct TYPE_2__ {struct sk_buff* next_wr; } ;


 TYPE_1__* WR_SKB_CB (struct sk_buff*) ;
 int skb_get (struct sk_buff*) ;

__attribute__((used)) static inline void enqueue_wr(struct chtls_sock *csk, struct sk_buff *skb)
{
 WR_SKB_CB(skb)->next_wr = ((void*)0);

 skb_get(skb);

 if (!csk->wr_skb_head)
  csk->wr_skb_head = skb;
 else
  WR_SKB_CB(csk->wr_skb_tail)->next_wr = skb;
 csk->wr_skb_tail = skb;
}
