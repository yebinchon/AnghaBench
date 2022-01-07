
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int snd_wscale; } ;
struct tcp_sock {int max_window; TYPE_1__ rx_opt; } ;
struct sock {scalar_t__ sk_state; int sk_err; } ;


 int CPL_ABORT_SEND_RST ;
 int ECONNRESET ;
 int TCPF_CLOSE ;
 scalar_t__ TCP_CLOSE ;
 int chtls_purge_receive_queue (struct sock*) ;
 int chtls_purge_recv_queue (struct sock*) ;
 int chtls_purge_write_queue (struct sock*) ;
 int chtls_send_reset (struct sock*,int ,int *) ;
 int tcp_disconnect (struct sock*,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int wait_for_states (struct sock*,int ) ;

int chtls_disconnect(struct sock *sk, int flags)
{
 struct tcp_sock *tp;
 int err;

 tp = tcp_sk(sk);
 chtls_purge_recv_queue(sk);
 chtls_purge_receive_queue(sk);
 chtls_purge_write_queue(sk);

 if (sk->sk_state != TCP_CLOSE) {
  sk->sk_err = ECONNRESET;
  chtls_send_reset(sk, CPL_ABORT_SEND_RST, ((void*)0));
  err = wait_for_states(sk, TCPF_CLOSE);
  if (err)
   return err;
 }
 chtls_purge_recv_queue(sk);
 chtls_purge_receive_queue(sk);
 tp->max_window = 0xFFFF << (tp->rx_opt.snd_wscale);
 return tcp_disconnect(sk, flags);
}
