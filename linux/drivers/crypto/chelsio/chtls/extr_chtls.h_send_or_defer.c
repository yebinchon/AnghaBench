
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct chtls_sock {int egress_dev; int l2t_entry; } ;


 int cxgb4_l2t_send (int ,struct sk_buff*,int ) ;
 int cxgb4_ofld_send (int ,struct sk_buff*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;

__attribute__((used)) static inline void send_or_defer(struct sock *sk, struct tcp_sock *tp,
     struct sk_buff *skb, int through_l2t)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);

 if (through_l2t) {

  cxgb4_l2t_send(csk->egress_dev, skb, csk->l2t_entry);
 } else {

  cxgb4_ofld_send(csk->egress_dev, skb);
 }
}
