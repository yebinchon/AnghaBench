
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct chtls_sock {int txq_idx; } ;
struct TYPE_2__ {int cdev; } ;


 TYPE_1__* BLOG_SKB_CB (struct sk_buff*) ;
 int CPL_ABORT_NO_RST ;
 int do_abort_syn_rcv (struct sock*,struct sock*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int send_abort_rpl (struct sock*,struct sk_buff*,int ,int ,int) ;

__attribute__((used)) static void bl_abort_syn_rcv(struct sock *lsk, struct sk_buff *skb)
{
 struct chtls_sock *csk;
 struct sock *child;
 int queue;

 child = skb->sk;
 csk = rcu_dereference_sk_user_data(child);
 queue = csk->txq_idx;

 skb->sk = ((void*)0);
 do_abort_syn_rcv(child, lsk);
 send_abort_rpl(child, skb, BLOG_SKB_CB(skb)->cdev,
         CPL_ABORT_NO_RST, queue);
}
