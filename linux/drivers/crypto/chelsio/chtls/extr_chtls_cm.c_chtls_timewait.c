
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ts_recent_stamp; } ;
struct tcp_sock {scalar_t__ srtt_us; TYPE_1__ rx_opt; int rcv_nxt; } ;
struct sock {int dummy; } ;


 int TCP_TIME_WAIT ;
 int ktime_get_seconds () ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_wait (struct sock*,int ,int ) ;

__attribute__((used)) static void chtls_timewait(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 tp->rcv_nxt++;
 tp->rx_opt.ts_recent_stamp = ktime_get_seconds();
 tp->srtt_us = 0;
 tcp_time_wait(sk, TCP_TIME_WAIT, 0);
}
