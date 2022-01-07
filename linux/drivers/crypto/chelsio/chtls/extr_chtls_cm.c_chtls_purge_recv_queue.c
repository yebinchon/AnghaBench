
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct chtls_hws {int sk_recv_queue; } ;
struct chtls_sock {struct chtls_hws tlshws; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int skb_dst_set (struct sk_buff*,int *) ;

__attribute__((used)) static void chtls_purge_recv_queue(struct sock *sk)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);
 struct chtls_hws *tlsk = &csk->tlshws;
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(&tlsk->sk_recv_queue)) != ((void*)0)) {
  skb_dst_set(skb, ((void*)0));
  kfree_skb(skb);
 }
}
