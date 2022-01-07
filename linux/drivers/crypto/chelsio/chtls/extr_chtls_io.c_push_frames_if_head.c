
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct chtls_sock {int txq; } ;


 int chtls_push_frames (struct chtls_sock*,int) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int skb_queue_len (int *) ;

__attribute__((used)) static void push_frames_if_head(struct sock *sk)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);

 if (skb_queue_len(&csk->txq) == 1)
  chtls_push_frames(csk, 1);
}
