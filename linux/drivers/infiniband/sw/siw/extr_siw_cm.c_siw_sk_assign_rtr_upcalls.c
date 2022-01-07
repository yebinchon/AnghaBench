
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; int sk_write_space; int sk_data_ready; } ;
struct siw_cep {TYPE_1__* sock; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int siw_qp_llp_write_space ;
 int siw_rtr_data_ready ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void siw_sk_assign_rtr_upcalls(struct siw_cep *cep)
{
 struct sock *sk = cep->sock->sk;

 write_lock_bh(&sk->sk_callback_lock);
 sk->sk_data_ready = siw_rtr_data_ready;
 sk->sk_write_space = siw_qp_llp_write_space;
 write_unlock_bh(&sk->sk_callback_lock);
}
