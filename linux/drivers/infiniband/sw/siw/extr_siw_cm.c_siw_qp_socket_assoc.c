
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_callback_lock; int sk_write_space; int sk_data_ready; } ;
struct TYPE_2__ {struct socket* sk; } ;
struct siw_qp {TYPE_1__ attrs; } ;
struct siw_cep {struct socket* sock; } ;


 int siw_qp_llp_data_ready ;
 int siw_qp_llp_write_space ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void siw_qp_socket_assoc(struct siw_cep *cep, struct siw_qp *qp)
{
 struct socket *s = cep->sock;
 struct sock *sk = s->sk;

 write_lock_bh(&sk->sk_callback_lock);

 qp->attrs.sk = s;
 sk->sk_data_ready = siw_qp_llp_data_ready;
 sk->sk_write_space = siw_qp_llp_write_space;

 write_unlock_bh(&sk->sk_callback_lock);
}
