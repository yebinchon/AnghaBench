
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; TYPE_1__* sk_socket; } ;
struct siw_cep {int qp; int (* sk_write_space ) (struct sock*) ;} ;
struct TYPE_2__ {int flags; } ;


 int SOCK_NOSPACE ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int siw_sq_start (int ) ;
 struct siw_cep* sk_to_cep (struct sock*) ;
 int stub1 (struct sock*) ;
 int test_bit (int ,int *) ;

void siw_qp_llp_write_space(struct sock *sk)
{
 struct siw_cep *cep;

 read_lock(&sk->sk_callback_lock);

 cep = sk_to_cep(sk);
 if (cep) {
  cep->sk_write_space(sk);

  if (!test_bit(SOCK_NOSPACE, &sk->sk_socket->flags))
   (void)siw_sq_start(cep->qp);
 }

 read_unlock(&sk->sk_callback_lock);
}
