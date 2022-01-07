
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; int sk_error_report; int sk_write_space; int sk_data_ready; int sk_state_change; } ;
struct siw_cep {int sk_error_report; int sk_write_space; int sk_data_ready; int sk_state_change; } ;


 struct siw_cep* sk_to_cep (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void siw_sk_save_upcalls(struct sock *sk)
{
 struct siw_cep *cep = sk_to_cep(sk);

 write_lock_bh(&sk->sk_callback_lock);
 cep->sk_state_change = sk->sk_state_change;
 cep->sk_data_ready = sk->sk_data_ready;
 cep->sk_write_space = sk->sk_write_space;
 cep->sk_error_report = sk->sk_error_report;
 write_unlock_bh(&sk->sk_callback_lock);
}
