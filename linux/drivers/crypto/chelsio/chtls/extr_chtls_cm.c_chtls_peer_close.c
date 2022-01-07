
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; int sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct chtls_sock {int dummy; } ;


 int CSK_ABORT_RPL_PENDING ;
 int POLL_HUP ;
 int POLL_IN ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int SOCK_DONE ;
 int SOCK_WAKE_WAITD ;
 int TCP_CLOSE ;
 int TCP_CLOSE_WAIT ;
 int TCP_CLOSING ;




 int chtls_conn_done (struct sock*) ;
 int chtls_release_resources (struct sock*) ;
 int chtls_timewait (struct sock*) ;
 int csk_flag_nochk (struct chtls_sock*,int ) ;
 int pr_info (char*,int) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int sock_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int tcp_set_state (struct sock*,int ) ;

__attribute__((used)) static void chtls_peer_close(struct sock *sk, struct sk_buff *skb)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);

 sk->sk_shutdown |= RCV_SHUTDOWN;
 sock_set_flag(sk, SOCK_DONE);

 switch (sk->sk_state) {
 case 128:
 case 131:
  tcp_set_state(sk, TCP_CLOSE_WAIT);
  break;
 case 130:
  tcp_set_state(sk, TCP_CLOSING);
  break;
 case 129:
  chtls_release_resources(sk);
  if (csk_flag_nochk(csk, CSK_ABORT_RPL_PENDING))
   chtls_conn_done(sk);
  else
   chtls_timewait(sk);
  break;
 default:
  pr_info("cpl_peer_close in bad state %d\n", sk->sk_state);
 }

 if (!sock_flag(sk, SOCK_DEAD)) {
  sk->sk_state_change(sk);


  if ((sk->sk_shutdown & SEND_SHUTDOWN) ||
      sk->sk_state == TCP_CLOSE)
   sk_wake_async(sk, SOCK_WAKE_WAITD, POLL_HUP);
  else
   sk_wake_async(sk, SOCK_WAKE_WAITD, POLL_IN);
 }
}
