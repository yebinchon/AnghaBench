
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_req {int dummy; } ;
struct chtls_sock {int txdata_skb_cache; } ;


 int CPL_ABORT_SEND_RST ;
 int INC_ORPHAN_COUNT (struct sock*) ;
 scalar_t__ TCP_CLOSE ;
 struct sk_buff* alloc_ctrl_skb (int ,int) ;
 int chtls_send_reset (struct sock*,int ,struct sk_buff*) ;
 int inet_csk_destroy_sock (struct sock*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int sock_orphan (struct sock*) ;

__attribute__((used)) static void reset_listen_child(struct sock *child)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(child);
 struct sk_buff *skb;

 skb = alloc_ctrl_skb(csk->txdata_skb_cache,
        sizeof(struct cpl_abort_req));

 chtls_send_reset(child, CPL_ABORT_SEND_RST, skb);
 sock_orphan(child);
 INC_ORPHAN_COUNT(child);
 if (child->sk_state == TCP_CLOSE)
  inet_csk_destroy_sock(child);
}
