
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {int (* backlog_rcv ) (struct sock*,struct sk_buff*) ;} ;


 TYPE_1__* BLOG_SKB_CB (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int stub1 (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int chtls_backlog_rcv(struct sock *sk, struct sk_buff *skb)
{
 if (skb->protocol) {
  kfree_skb(skb);
  return 0;
 }
 BLOG_SKB_CB(skb)->backlog_rcv(sk, skb);
 return 0;
}
