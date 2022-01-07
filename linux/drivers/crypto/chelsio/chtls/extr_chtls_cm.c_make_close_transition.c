
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {size_t sk_state; } ;


 int TCP_ACTION_FIN ;
 int TCP_STATE_MASK ;
 scalar_t__* new_state ;
 int tcp_set_state (struct sock*,int) ;

__attribute__((used)) static int make_close_transition(struct sock *sk)
{
 int next = (int)new_state[sk->sk_state];

 tcp_set_state(sk, next & TCP_STATE_MASK);
 return next & TCP_ACTION_FIN;
}
