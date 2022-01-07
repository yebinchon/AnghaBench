
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct chtls_sock* sk_user_data; } ;
struct chtls_sock {struct sock* passive_reap_next; } ;


 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 struct sock* reap_list ;
 int reap_list_lock ;
 int reap_task ;
 int release_tcp_port (struct sock*) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void add_to_reap_list(struct sock *sk)
{
 struct chtls_sock *csk = sk->sk_user_data;

 local_bh_disable();
 bh_lock_sock(sk);
 release_tcp_port(sk);

 spin_lock(&reap_list_lock);
 csk->passive_reap_next = reap_list;
 reap_list = sk;
 if (!csk->passive_reap_next)
  schedule_work(&reap_task);
 spin_unlock(&reap_list_lock);
 bh_unlock_sock(sk);
 local_bh_enable();
}
