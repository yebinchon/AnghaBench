
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {void (* backlog_rcv ) (struct sock*,struct sk_buff*) ;} ;


 TYPE_1__* BLOG_SKB_CB (struct sk_buff*) ;
 int __sk_add_backlog (struct sock*,struct sk_buff*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int sock_owned_by_user (struct sock*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void process_cpl_msg(void (*fn)(struct sock *, struct sk_buff *),
       struct sock *sk,
       struct sk_buff *skb)
{
 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);

 bh_lock_sock(sk);
 if (unlikely(sock_owned_by_user(sk))) {
  BLOG_SKB_CB(skb)->backlog_rcv = fn;
  __sk_add_backlog(sk, skb);
 } else {
  fn(sk, skb);
 }
 bh_unlock_sock(sk);
}
