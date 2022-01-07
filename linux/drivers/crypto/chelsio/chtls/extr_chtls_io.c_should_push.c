
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int nonagle; } ;
struct sock {int dummy; } ;
struct chtls_sock {scalar_t__ wr_credits; scalar_t__ wr_max_credits; struct chtls_dev* cdev; } ;
struct chtls_dev {int dummy; } ;


 int TCP_NAGLE_OFF ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static bool should_push(struct sock *sk)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);
 struct chtls_dev *cdev = csk->cdev;
 struct tcp_sock *tp = tcp_sk(sk);




 if (!cdev)
  return 0;






 return csk->wr_credits == csk->wr_max_credits ||
  (tp->nonagle & TCP_NAGLE_OFF);
}
