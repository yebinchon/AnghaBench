
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_family; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_rpl_rss {int dummy; } ;
struct chtls_sock {int port_id; struct chtls_dev* cdev; } ;
struct chtls_dev {int tids; } ;


 int CSK_ABORT_REQ_RCVD ;
 int CSK_ABORT_RPL_PENDING ;
 int GET_TID (struct cpl_abort_rpl_rss*) ;
 int RSS_HDR ;
 scalar_t__ TCP_SYN_SENT ;
 int chtls_conn_done (struct sock*) ;
 int chtls_release_resources (struct sock*) ;
 struct cpl_abort_rpl_rss* cplhdr (struct sk_buff*) ;
 scalar_t__ csk_flag_nochk (struct chtls_sock*,int ) ;
 int csk_reset_flag (struct chtls_sock*,int ) ;
 int cxgb4_remove_tid (int ,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void chtls_abort_rpl_rss(struct sock *sk, struct sk_buff *skb)
{
 struct cpl_abort_rpl_rss *rpl = cplhdr(skb) + RSS_HDR;
 struct chtls_sock *csk;
 struct chtls_dev *cdev;

 csk = rcu_dereference_sk_user_data(sk);
 cdev = csk->cdev;

 if (csk_flag_nochk(csk, CSK_ABORT_RPL_PENDING)) {
  csk_reset_flag(csk, CSK_ABORT_RPL_PENDING);
  if (!csk_flag_nochk(csk, CSK_ABORT_REQ_RCVD)) {
   if (sk->sk_state == TCP_SYN_SENT) {
    cxgb4_remove_tid(cdev->tids,
       csk->port_id,
       GET_TID(rpl),
       sk->sk_family);
    sock_put(sk);
   }
   chtls_release_resources(sk);
   chtls_conn_done(sk);
  }
 }
 kfree_skb(skb);
}
