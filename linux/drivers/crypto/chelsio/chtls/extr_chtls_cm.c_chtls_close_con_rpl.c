
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int linger2; scalar_t__ snd_una; } ;
struct sock {int sk_state; int (* sk_state_change ) (struct sock*) ;int sk_shutdown; } ;
struct sk_buff {int dummy; } ;
struct cpl_close_con_rpl {int snd_nxt; } ;
struct chtls_sock {int dummy; } ;


 int CSK_ABORT_RPL_PENDING ;
 int CSK_ABORT_SHUTDOWN ;
 int RSS_HDR ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;


 int TCP_FIN_WAIT2 ;

 int chtls_abort_conn (struct sock*,struct sk_buff*) ;
 int chtls_conn_done (struct sock*) ;
 int chtls_release_resources (struct sock*) ;
 int chtls_timewait (struct sock*) ;
 struct cpl_close_con_rpl* cplhdr (struct sk_buff*) ;
 int csk_flag_nochk (struct chtls_sock*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ ntohl (int ) ;
 int pr_info (char*,int) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int tcp_set_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void chtls_close_con_rpl(struct sock *sk, struct sk_buff *skb)
{
 struct cpl_close_con_rpl *rpl = cplhdr(skb) + RSS_HDR;
 struct chtls_sock *csk;
 struct tcp_sock *tp;

 csk = rcu_dereference_sk_user_data(sk);
 tp = tcp_sk(sk);

 tp->snd_una = ntohl(rpl->snd_nxt) - 1;

 switch (sk->sk_state) {
 case 130:
  chtls_release_resources(sk);
  if (csk_flag_nochk(csk, CSK_ABORT_RPL_PENDING))
   chtls_conn_done(sk);
  else
   chtls_timewait(sk);
  break;
 case 128:
  chtls_release_resources(sk);
  chtls_conn_done(sk);
  break;
 case 129:
  tcp_set_state(sk, TCP_FIN_WAIT2);
  sk->sk_shutdown |= SEND_SHUTDOWN;

  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_state_change(sk);
  else if (tcp_sk(sk)->linger2 < 0 &&
    !csk_flag_nochk(csk, CSK_ABORT_SHUTDOWN))
   chtls_abort_conn(sk, skb);
  break;
 default:
  pr_info("close_con_rpl in bad state %d\n", sk->sk_state);
 }
 kfree_skb(skb);
}
