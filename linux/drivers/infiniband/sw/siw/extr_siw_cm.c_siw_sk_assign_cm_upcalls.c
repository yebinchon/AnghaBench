
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; int sk_error_report; int sk_write_space; int sk_data_ready; int sk_state_change; } ;


 int siw_cm_llp_data_ready ;
 int siw_cm_llp_error_report ;
 int siw_cm_llp_state_change ;
 int siw_cm_llp_write_space ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void siw_sk_assign_cm_upcalls(struct sock *sk)
{
 write_lock_bh(&sk->sk_callback_lock);
 sk->sk_state_change = siw_cm_llp_state_change;
 sk->sk_data_ready = siw_cm_llp_data_ready;
 sk->sk_write_space = siw_cm_llp_write_space;
 sk->sk_error_report = siw_cm_llp_error_report;
 write_unlock_bh(&sk->sk_callback_lock);
}
