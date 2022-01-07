
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* backlog_rcv ) (struct sock*,struct sk_buff*) ;} ;


 TYPE_1__* BLOG_SKB_CB (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int stub1 (struct sock*,struct sk_buff*) ;
 int tcp_v4_do_rcv (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int listen_backlog_rcv(struct sock *sk, struct sk_buff *skb)
{
 if (likely(skb_transport_header(skb) != skb_network_header(skb)))
  return tcp_v4_do_rcv(sk, skb);
 BLOG_SKB_CB(skb)->backlog_rcv(sk, skb);
 return 0;
}
