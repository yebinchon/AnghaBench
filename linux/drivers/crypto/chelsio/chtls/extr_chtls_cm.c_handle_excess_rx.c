
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int CSK_ABORT_SHUTDOWN ;
 int chtls_abort_conn (struct sock*,struct sk_buff*) ;
 int csk_flag (struct sock*,int ) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void handle_excess_rx(struct sock *sk, struct sk_buff *skb)
{
 if (!csk_flag(sk, CSK_ABORT_SHUTDOWN))
  chtls_abort_conn(sk, skb);

 kfree_skb(skb);
}
