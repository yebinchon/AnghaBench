
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_callback_lock; } ;
struct siw_cep {int dummy; } ;


 int pr_warn (char*) ;
 int siw_cep_put (struct siw_cep*) ;
 int siw_sk_restore_upcalls (struct sock*,struct siw_cep*) ;
 struct siw_cep* sk_to_cep (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void siw_socket_disassoc(struct socket *s)
{
 struct sock *sk = s->sk;
 struct siw_cep *cep;

 if (sk) {
  write_lock_bh(&sk->sk_callback_lock);
  cep = sk_to_cep(sk);
  if (cep) {
   siw_sk_restore_upcalls(sk, cep);
   siw_cep_put(cep);
  } else {
   pr_warn("siw: cannot restore sk callbacks: no ep\n");
  }
  write_unlock_bh(&sk->sk_callback_lock);
 } else {
  pr_warn("siw: cannot restore sk callbacks: no sk\n");
 }
}
