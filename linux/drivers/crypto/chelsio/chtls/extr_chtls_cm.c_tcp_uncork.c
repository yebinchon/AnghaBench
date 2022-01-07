
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int nonagle; } ;
struct sock {int dummy; } ;


 int TCP_NAGLE_CORK ;
 int chtls_tcp_push (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_uncork(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tp->nonagle & TCP_NAGLE_CORK) {
  tp->nonagle &= ~TCP_NAGLE_CORK;
  chtls_tcp_push(sk, 0);
 }
}
