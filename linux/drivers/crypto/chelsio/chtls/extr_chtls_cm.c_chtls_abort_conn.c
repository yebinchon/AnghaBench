
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_req {int dummy; } ;


 int CPL_ABORT_SEND_RST ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int chtls_send_reset (struct sock*,int ,struct sk_buff*) ;

__attribute__((used)) static void chtls_abort_conn(struct sock *sk, struct sk_buff *skb)
{
 struct sk_buff *abort_skb;

 abort_skb = alloc_skb(sizeof(struct cpl_abort_req), GFP_ATOMIC);
 if (abort_skb)
  chtls_send_reset(sk, CPL_ABORT_SEND_RST, abort_skb);
}
