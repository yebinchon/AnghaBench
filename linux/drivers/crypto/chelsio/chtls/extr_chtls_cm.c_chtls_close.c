
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_state; TYPE_2__* sk_prot; int sk_lingertime; int sk_receive_queue; int sk_shutdown; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_req {int dummy; } ;
struct TYPE_4__ {int sk_recv_queue; } ;
struct chtls_sock {TYPE_1__ tlshws; } ;
struct TYPE_6__ {scalar_t__ linger2; } ;
struct TYPE_5__ {int (* disconnect ) (struct sock*,int ) ;} ;


 int CPL_ABORT_SEND_RST ;
 int CSK_ABORT_SHUTDOWN ;
 int GFP_ATOMIC ;
 int SHUTDOWN_MASK ;
 int SOCK_LINGER ;
 int TCP_CLOSE ;
 int TCP_FIN_WAIT2 ;
 int TCP_SYN_SENT ;
 struct sk_buff* alloc_skb (int,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int chtls_close_conn (struct sock*) ;
 int chtls_purge_receive_queue (struct sock*) ;
 int chtls_purge_recv_queue (struct sock*) ;
 int chtls_send_reset (struct sock*,int ,struct sk_buff*) ;
 int csk_flag (struct sock*,int ) ;
 int inet_csk_destroy_sock (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int lock_sock (struct sock*) ;
 scalar_t__ make_close_transition (struct sock*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int release_sock (struct sock*) ;
 int release_tcp_port (struct sock*) ;
 int sk_stream_wait_close (struct sock*,long) ;
 int skb_queue_len (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*,int ) ;
 TYPE_3__* tcp_sk (struct sock*) ;

void chtls_close(struct sock *sk, long timeout)
{
 int data_lost, prev_state;
 struct chtls_sock *csk;

 csk = rcu_dereference_sk_user_data(sk);

 lock_sock(sk);
 sk->sk_shutdown |= SHUTDOWN_MASK;

 data_lost = skb_queue_len(&sk->sk_receive_queue);
 data_lost |= skb_queue_len(&csk->tlshws.sk_recv_queue);
 chtls_purge_recv_queue(sk);
 chtls_purge_receive_queue(sk);

 if (sk->sk_state == TCP_CLOSE) {
  goto wait;
 } else if (data_lost || sk->sk_state == TCP_SYN_SENT) {
  chtls_send_reset(sk, CPL_ABORT_SEND_RST, ((void*)0));
  release_tcp_port(sk);
  goto unlock;
 } else if (sock_flag(sk, SOCK_LINGER) && !sk->sk_lingertime) {
  sk->sk_prot->disconnect(sk, 0);
 } else if (make_close_transition(sk)) {
  chtls_close_conn(sk);
 }
wait:
 if (timeout)
  sk_stream_wait_close(sk, timeout);

unlock:
 prev_state = sk->sk_state;
 sock_hold(sk);
 sock_orphan(sk);

 release_sock(sk);

 local_bh_disable();
 bh_lock_sock(sk);

 if (prev_state != TCP_CLOSE && sk->sk_state == TCP_CLOSE)
  goto out;

 if (sk->sk_state == TCP_FIN_WAIT2 && tcp_sk(sk)->linger2 < 0 &&
     !csk_flag(sk, CSK_ABORT_SHUTDOWN)) {
  struct sk_buff *skb;

  skb = alloc_skb(sizeof(struct cpl_abort_req), GFP_ATOMIC);
  if (skb)
   chtls_send_reset(sk, CPL_ABORT_SEND_RST, skb);
 }

 if (sk->sk_state == TCP_CLOSE)
  inet_csk_destroy_sock(sk);

out:
 bh_unlock_sock(sk);
 local_bh_enable();
 sock_put(sk);
}
