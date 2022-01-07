
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct l2t_entry {int dummy; } ;
struct cpl_abort_rpl {int dummy; } ;
struct cpl_abort_req_rss {int status; } ;
struct chtls_sock {int egress_dev; struct l2t_entry* l2t_entry; } ;
struct chtls_dev {TYPE_1__* lldi; } ;
struct TYPE_2__ {int * ports; } ;


 int CPL_PRIORITY_DATA ;
 int GET_TID (struct cpl_abort_req_rss*) ;
 int GFP_KERNEL ;
 scalar_t__ TCP_SYN_RECV ;
 struct sk_buff* alloc_skb (int,int ) ;
 struct cpl_abort_req_rss* cplhdr (struct sk_buff*) ;
 scalar_t__ csk_conn_inline (struct chtls_sock*) ;
 int cxgb4_l2t_send (int ,struct sk_buff*,struct l2t_entry*) ;
 int cxgb4_ofld_send (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int send_defer_abort_rpl (struct chtls_dev*,struct sk_buff*) ;
 int set_abort_rpl_wr (struct sk_buff*,int ,int) ;
 int set_wr_txq (struct sk_buff*,int ,int) ;

__attribute__((used)) static void send_abort_rpl(struct sock *sk, struct sk_buff *skb,
      struct chtls_dev *cdev, int status, int queue)
{
 struct cpl_abort_req_rss *req = cplhdr(skb);
 struct sk_buff *reply_skb;
 struct chtls_sock *csk;

 csk = rcu_dereference_sk_user_data(sk);

 reply_skb = alloc_skb(sizeof(struct cpl_abort_rpl),
         GFP_KERNEL);

 if (!reply_skb) {
  req->status = (queue << 1);
  send_defer_abort_rpl(cdev, skb);
  return;
 }

 set_abort_rpl_wr(reply_skb, GET_TID(req), status);
 kfree_skb(skb);

 set_wr_txq(reply_skb, CPL_PRIORITY_DATA, queue);
 if (csk_conn_inline(csk)) {
  struct l2t_entry *e = csk->l2t_entry;

  if (e && sk->sk_state != TCP_SYN_RECV) {
   cxgb4_l2t_send(csk->egress_dev, reply_skb, e);
   return;
  }
 }
 cxgb4_ofld_send(cdev->lldi->ports[0], reply_skb);
}
