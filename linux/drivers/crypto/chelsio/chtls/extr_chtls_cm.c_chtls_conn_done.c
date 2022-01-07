
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int SOCK_DEAD ;
 int chtls_purge_receive_queue (struct sock*) ;
 int sk_wakeup_sleepers (struct sock*,int ) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int tcp_done (struct sock*) ;

__attribute__((used)) static void chtls_conn_done(struct sock *sk)
{
 if (sock_flag(sk, SOCK_DEAD))
  chtls_purge_receive_queue(sk);
 sk_wakeup_sleepers(sk, 0);
 tcp_done(sk);
}
