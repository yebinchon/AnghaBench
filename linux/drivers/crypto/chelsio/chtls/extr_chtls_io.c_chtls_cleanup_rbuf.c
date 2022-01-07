
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int copied_seq; int rcv_wup; int rcv_wnd; } ;
struct sock {int dummy; } ;
struct chtls_sock {int dummy; } ;


 int CREDIT_RETURN_STATE ;
 int chtls_select_window (struct sock*) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int send_rx_credits (struct chtls_sock*,int) ;
 int sk_in_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void chtls_cleanup_rbuf(struct sock *sk, int copied)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);
 struct tcp_sock *tp;
 int must_send;
 u32 credits;
 u32 thres;

 thres = 15 * 1024;

 if (!sk_in_state(sk, CREDIT_RETURN_STATE))
  return;

 chtls_select_window(sk);
 tp = tcp_sk(sk);
 credits = tp->copied_seq - tp->rcv_wup;
 if (unlikely(!credits))
  return;





 must_send = credits + 16384 >= tp->rcv_wnd;

 if (must_send || credits >= thres)
  tp->rcv_wup += send_rx_credits(csk, credits);
}
