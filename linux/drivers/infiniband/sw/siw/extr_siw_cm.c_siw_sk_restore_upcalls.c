
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int * sk_user_data; int sk_error_report; int sk_write_space; int sk_data_ready; int sk_state_change; } ;
struct siw_cep {int sk_error_report; int sk_write_space; int sk_data_ready; int sk_state_change; } ;



__attribute__((used)) static void siw_sk_restore_upcalls(struct sock *sk, struct siw_cep *cep)
{
 sk->sk_state_change = cep->sk_state_change;
 sk->sk_data_ready = cep->sk_data_ready;
 sk->sk_write_space = cep->sk_write_space;
 sk->sk_error_report = cep->sk_error_report;
 sk->sk_user_data = ((void*)0);
}
