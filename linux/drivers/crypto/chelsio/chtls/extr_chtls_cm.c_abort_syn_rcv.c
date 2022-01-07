
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct chtls_sock* sk_user_data; } ;
struct sk_buff {struct sock* sk; } ;
struct request_sock {int ts_recent; } ;
struct listen_ctx {struct sock* lsk; } ;
struct chtls_sock {int txq_idx; struct chtls_dev* cdev; struct request_sock* passive_reap_next; } ;
struct chtls_dev {int tids; } ;
struct TYPE_2__ {int backlog_rcv; } ;


 TYPE_1__* BLOG_SKB_CB (struct sk_buff*) ;
 int CPL_ABORT_NO_RST ;
 int __sk_add_backlog (struct sock*,struct sk_buff*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int bl_abort_syn_rcv ;
 int do_abort_syn_rcv (struct sock*,struct sock*) ;
 void* lookup_stid (int ,int ) ;
 int send_abort_rpl (struct sock*,struct sk_buff*,struct chtls_dev*,int ,int) ;
 int sock_owned_by_user (struct sock*) ;

__attribute__((used)) static int abort_syn_rcv(struct sock *sk, struct sk_buff *skb)
{
 const struct request_sock *oreq;
 struct listen_ctx *listen_ctx;
 struct chtls_sock *csk;
 struct chtls_dev *cdev;
 struct sock *psk;
 void *ctx;

 csk = sk->sk_user_data;
 oreq = csk->passive_reap_next;
 cdev = csk->cdev;

 if (!oreq)
  return -1;

 ctx = lookup_stid(cdev->tids, oreq->ts_recent);
 if (!ctx)
  return -1;

 listen_ctx = (struct listen_ctx *)ctx;
 psk = listen_ctx->lsk;

 bh_lock_sock(psk);
 if (!sock_owned_by_user(psk)) {
  int queue = csk->txq_idx;

  do_abort_syn_rcv(sk, psk);
  send_abort_rpl(sk, skb, cdev, CPL_ABORT_NO_RST, queue);
 } else {
  skb->sk = sk;
  BLOG_SKB_CB(skb)->backlog_rcv = bl_abort_syn_rcv;
  __sk_add_backlog(psk, skb);
 }
 bh_unlock_sock(psk);
 return 0;
}
