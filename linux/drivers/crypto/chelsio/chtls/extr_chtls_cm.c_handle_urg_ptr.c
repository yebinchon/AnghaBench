
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ urg_seq; scalar_t__ copied_seq; scalar_t__ rcv_nxt; scalar_t__ urg_data; } ;
struct sock {int sk_receive_queue; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {scalar_t__ seq; } ;


 int SOCK_URGINLINE ;
 scalar_t__ TCP_URG_NOTYET ;
 TYPE_1__* ULP_SKB_CB (struct sk_buff*) ;
 int after (scalar_t__,scalar_t__) ;
 int chtls_free_skb (struct sock*,struct sk_buff*) ;
 int sk_send_sigurg (struct sock*) ;
 struct sk_buff* skb_peek (int *) ;
 int sock_flag (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void handle_urg_ptr(struct sock *sk, u32 urg_seq)
{
 struct tcp_sock *tp = tcp_sk(sk);

 urg_seq--;
 if (tp->urg_data && !after(urg_seq, tp->urg_seq))
  return;

 sk_send_sigurg(sk);
 if (tp->urg_seq == tp->copied_seq && tp->urg_data &&
     !sock_flag(sk, SOCK_URGINLINE) &&
     tp->copied_seq != tp->rcv_nxt) {
  struct sk_buff *skb = skb_peek(&sk->sk_receive_queue);

  tp->copied_seq++;
  if (skb && tp->copied_seq - ULP_SKB_CB(skb)->seq >= skb->len)
   chtls_free_skb(sk, skb);
 }

 tp->urg_data = TCP_URG_NOTYET;
 tp->urg_seq = urg_seq;
}
