
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct tcp_sock {int rcv_wnd; int rcv_wup; void* snd_una; void* snd_nxt; void* write_seq; void* pushed_seq; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int inet_id; } ;


 int RCV_BUFSIZ_M ;
 int TCP_ESTABLISHED ;
 int assign_rxopt (struct sock*,unsigned int) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int prandom_u32 () ;
 int smp_mb () ;
 int tcp_set_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void make_established(struct sock *sk, u32 snd_isn, unsigned int opt)
{
 struct tcp_sock *tp = tcp_sk(sk);

 tp->pushed_seq = snd_isn;
 tp->write_seq = snd_isn;
 tp->snd_nxt = snd_isn;
 tp->snd_una = snd_isn;
 inet_sk(sk)->inet_id = prandom_u32();
 assign_rxopt(sk, opt);

 if (tp->rcv_wnd > (RCV_BUFSIZ_M << 10))
  tp->rcv_wup -= tp->rcv_wnd - (RCV_BUFSIZ_M << 10);

 smp_mb();
 tcp_set_state(sk, TCP_ESTABLISHED);
}
