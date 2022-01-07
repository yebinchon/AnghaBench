
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int rcv_nxt; int snd_nxt; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct chtls_sock {int cdev; } ;


 int CSK_ABORT_RPL_PENDING ;
 int CSK_ABORT_SHUTDOWN ;
 int CSK_RST_ABORTED ;
 int CSK_TX_DATA_SENT ;
 scalar_t__ TCP_SYN_RECV ;
 int WARN_ONCE (int,char*) ;
 int chtls_purge_write_queue (struct sock*) ;
 int chtls_send_abort (struct sock*,int,struct sk_buff*) ;
 scalar_t__ csk_flag_nochk (struct chtls_sock*,int ) ;
 int csk_set_flag (struct chtls_sock*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 scalar_t__ send_tx_flowc_wr (struct sock*,int ,int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void chtls_send_reset(struct sock *sk, int mode, struct sk_buff *skb)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);

 if (unlikely(csk_flag_nochk(csk, CSK_ABORT_SHUTDOWN) ||
       !csk->cdev)) {
  if (sk->sk_state == TCP_SYN_RECV)
   csk_set_flag(csk, CSK_RST_ABORTED);
  goto out;
 }

 if (!csk_flag_nochk(csk, CSK_TX_DATA_SENT)) {
  struct tcp_sock *tp = tcp_sk(sk);

  if (send_tx_flowc_wr(sk, 0, tp->snd_nxt, tp->rcv_nxt) < 0)
   WARN_ONCE(1, "send tx flowc error");
  csk_set_flag(csk, CSK_TX_DATA_SENT);
 }

 csk_set_flag(csk, CSK_ABORT_RPL_PENDING);
 chtls_purge_write_queue(sk);

 csk_set_flag(csk, CSK_ABORT_SHUTDOWN);
 if (sk->sk_state != TCP_SYN_RECV)
  chtls_send_abort(sk, mode, skb);
 else
  goto out;

 return;
out:
 kfree_skb(skb);
}
