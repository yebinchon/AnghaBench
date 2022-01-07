
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct chtls_sock {int kref; int ulp_mode; } ;
struct TYPE_2__ {int (* destroy ) (struct sock*) ;} ;


 int ULP_MODE_NONE ;
 int chtls_purge_recv_queue (struct sock*) ;
 int chtls_purge_write_queue (struct sock*) ;
 int chtls_sock_release ;
 int free_tls_keyid (struct sock*) ;
 int kref_put (int *,int ) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int stub1 (struct sock*) ;
 TYPE_1__ tcp_prot ;

void chtls_destroy_sock(struct sock *sk)
{
 struct chtls_sock *csk;

 csk = rcu_dereference_sk_user_data(sk);
 chtls_purge_recv_queue(sk);
 csk->ulp_mode = ULP_MODE_NONE;
 chtls_purge_write_queue(sk);
 free_tls_keyid(sk);
 kref_put(&csk->kref, chtls_sock_release);
 sk->sk_prot = &tcp_prot;
 sk->sk_prot->destroy(sk);
}
