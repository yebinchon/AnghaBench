
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct ulptx_idata {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_set_tcb_field {int dummy; } ;
struct chtls_sock {int port_id; } ;


 int CPL_PRIORITY_CONTROL ;
 int __set_tcb_field_direct (struct chtls_sock*,struct cpl_set_tcb_field*,int ,int ,int ,int ,int) ;
 scalar_t__ __skb_put (struct sk_buff*,unsigned int) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 unsigned int roundup (int,int) ;
 int set_wr_txq (struct sk_buff*,int ,int ) ;

__attribute__((used)) static void __set_tcb_field(struct sock *sk, struct sk_buff *skb, u16 word,
       u64 mask, u64 val, u8 cookie, int no_reply)
{
 struct cpl_set_tcb_field *req;
 struct chtls_sock *csk;
 struct ulptx_idata *sc;
 unsigned int wrlen;

 wrlen = roundup(sizeof(*req) + sizeof(*sc), 16);
 csk = rcu_dereference_sk_user_data(sk);

 req = (struct cpl_set_tcb_field *)__skb_put(skb, wrlen);
 __set_tcb_field_direct(csk, req, word, mask, val, cookie, no_reply);
 set_wr_txq(skb, CPL_PRIORITY_CONTROL, csk->port_id);
}
