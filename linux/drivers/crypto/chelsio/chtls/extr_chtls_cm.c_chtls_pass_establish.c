
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_socket; int (* sk_state_change ) (struct sock*) ;struct chtls_sock* sk_user_data; } ;
struct sk_buff {struct sock* sk; } ;
struct listen_ctx {struct sock* lsk; } ;
struct cpl_pass_establish {int tos_stid; int tcp_opt; int snd_isn; } ;
struct chtls_sock {int wr_max_credits; int wr_credits; TYPE_1__* listen_ctx; scalar_t__ wr_unacked; } ;
struct chtls_dev {int tids; } ;
struct TYPE_4__ {int backlog_rcv; struct chtls_dev* cdev; } ;
struct TYPE_3__ {int synq; } ;


 TYPE_2__* BLOG_SKB_CB (struct sk_buff*) ;
 int CPL_RET_BUF_DONE ;
 int CPL_RET_UNKNOWN_TID ;
 unsigned int GET_TID (struct cpl_pass_establish*) ;
 unsigned int PASS_OPEN_TID_G (int ) ;
 int POLL_OUT ;
 int RSS_HDR ;
 int __sk_add_backlog (struct sock*,struct sk_buff*) ;
 int add_pass_open_to_parent (struct sock*,struct sock*,struct chtls_dev*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int bl_add_pass_open_to_parent ;
 struct cpl_pass_establish* cplhdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 void* lookup_stid (int ,unsigned int) ;
 struct sock* lookup_tid (int ,unsigned int) ;
 int make_established (struct sock*,int ,int ) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int skb_queue_empty (int *) ;
 int sock_owned_by_user (struct sock*) ;
 int stub1 (struct sock*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int chtls_pass_establish(struct chtls_dev *cdev, struct sk_buff *skb)
{
 struct cpl_pass_establish *req = cplhdr(skb) + RSS_HDR;
 struct chtls_sock *csk;
 struct sock *lsk, *sk;
 unsigned int hwtid;

 hwtid = GET_TID(req);
 sk = lookup_tid(cdev->tids, hwtid);
 if (!sk)
  return (CPL_RET_UNKNOWN_TID | CPL_RET_BUF_DONE);

 bh_lock_sock(sk);
 if (unlikely(sock_owned_by_user(sk))) {
  kfree_skb(skb);
 } else {
  unsigned int stid;
  void *data;

  csk = sk->sk_user_data;
  csk->wr_max_credits = 64;
  csk->wr_credits = 64;
  csk->wr_unacked = 0;
  make_established(sk, ntohl(req->snd_isn), ntohs(req->tcp_opt));
  stid = PASS_OPEN_TID_G(ntohl(req->tos_stid));
  sk->sk_state_change(sk);
  if (unlikely(sk->sk_socket))
   sk_wake_async(sk, 0, POLL_OUT);

  data = lookup_stid(cdev->tids, stid);
  lsk = ((struct listen_ctx *)data)->lsk;

  bh_lock_sock(lsk);
  if (unlikely(skb_queue_empty(&csk->listen_ctx->synq))) {

   bh_unlock_sock(lsk);
   kfree_skb(skb);
   goto unlock;
  }

  if (likely(!sock_owned_by_user(lsk))) {
   kfree_skb(skb);
   add_pass_open_to_parent(sk, lsk, cdev);
  } else {
   skb->sk = sk;
   BLOG_SKB_CB(skb)->cdev = cdev;
   BLOG_SKB_CB(skb)->backlog_rcv =
    bl_add_pass_open_to_parent;
   __sk_add_backlog(lsk, skb);
  }
  bh_unlock_sock(lsk);
 }
unlock:
 bh_unlock_sock(sk);
 return 0;
}
