
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 int __kfree_skb (struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,int *) ;
 int skb_dst_set (struct sk_buff*,int *) ;

__attribute__((used)) static inline void chtls_free_skb(struct sock *sk, struct sk_buff *skb)
{
 skb_dst_set(skb, ((void*)0));
 __skb_unlink(skb, &sk->sk_receive_queue);
 __kfree_skb(skb);
}
