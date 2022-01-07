
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_2__ {int cdev; } ;


 TYPE_1__* BLOG_SKB_CB (struct sk_buff*) ;
 int add_pass_open_to_parent (struct sock*,struct sock*,int ) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void bl_add_pass_open_to_parent(struct sock *lsk, struct sk_buff *skb)
{
 struct sock *child = skb->sk;

 skb->sk = ((void*)0);
 add_pass_open_to_parent(child, lsk, BLOG_SKB_CB(skb)->cdev);
 kfree_skb(skb);
}
