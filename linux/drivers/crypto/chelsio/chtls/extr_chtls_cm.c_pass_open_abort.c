
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int do_abort_syn_rcv (struct sock*,struct sock*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void pass_open_abort(struct sock *child, struct sock *parent,
       struct sk_buff *skb)
{
 do_abort_syn_rcv(child, parent);
 kfree_skb(skb);
}
