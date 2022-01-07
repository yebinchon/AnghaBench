
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int ts_recent; } ;
struct listen_ctx {struct sock* lsk; } ;
struct chtls_sock {struct request_sock* passive_reap_next; struct chtls_dev* cdev; } ;
struct chtls_dev {int tids; } ;
struct TYPE_2__ {int backlog_rcv; } ;


 TYPE_1__* BLOG_SKB_CB (struct sk_buff*) ;
 int CSK_ABORT_RPL_PENDING ;
 int __sk_add_backlog (struct sock*,struct sk_buff*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int bl_pass_open_abort ;
 scalar_t__ csk_flag (struct sock*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 void* lookup_stid (int ,int ) ;
 int pass_open_abort (struct sock*,struct sock*,struct sk_buff*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;

__attribute__((used)) static void chtls_pass_open_arp_failure(struct sock *sk,
     struct sk_buff *skb)
{
 const struct request_sock *oreq;
 struct chtls_sock *csk;
 struct chtls_dev *cdev;
 struct sock *parent;
 void *data;

 csk = rcu_dereference_sk_user_data(sk);
 cdev = csk->cdev;






 if (csk_flag(sk, CSK_ABORT_RPL_PENDING)) {
  kfree_skb(skb);
  return;
 }

 oreq = csk->passive_reap_next;
 data = lookup_stid(cdev->tids, oreq->ts_recent);
 parent = ((struct listen_ctx *)data)->lsk;

 bh_lock_sock(parent);
 if (!sock_owned_by_user(parent)) {
  pass_open_abort(sk, parent, skb);
 } else {
  BLOG_SKB_CB(skb)->backlog_rcv = bl_pass_open_abort;
  __sk_add_backlog(parent, skb);
 }
 bh_unlock_sock(parent);
}
