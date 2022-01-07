
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,void*) ;

__attribute__((used)) static void chtls_purge_receive_queue(struct sock *sk)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(&sk->sk_receive_queue)) != ((void*)0)) {
  skb_dst_set(skb, (void *)((void*)0));
  kfree_skb(skb);
 }
}
