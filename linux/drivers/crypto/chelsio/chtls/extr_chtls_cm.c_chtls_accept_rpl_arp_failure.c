
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int chtls_pass_open_arp_failure ;
 int process_cpl_msg (int ,struct sock*,struct sk_buff*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void chtls_accept_rpl_arp_failure(void *handle,
      struct sk_buff *skb)
{
 struct sock *sk = (struct sock *)handle;

 sock_hold(sk);
 process_cpl_msg(chtls_pass_open_arp_failure, sk, skb);
 sock_put(sk);
}
