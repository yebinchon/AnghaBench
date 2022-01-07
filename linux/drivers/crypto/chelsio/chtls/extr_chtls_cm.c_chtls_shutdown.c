
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int SEND_SHUTDOWN ;
 int SHUTDOWN_ELIGIBLE_STATE ;
 int chtls_close_conn (struct sock*) ;
 scalar_t__ make_close_transition (struct sock*) ;
 scalar_t__ sk_in_state (struct sock*,int ) ;

void chtls_shutdown(struct sock *sk, int how)
{
 if ((how & SEND_SHUTDOWN) &&
     sk_in_state(sk, SHUTDOWN_ELIGIBLE_STATE) &&
     make_close_transition(sk))
  chtls_close_conn(sk);
}
