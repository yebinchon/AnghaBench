
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int sk_err; } ;
struct siw_cep {int (* sk_error_report ) (struct sock*) ;int state; } ;


 int siw_dbg_cep (struct siw_cep*,char*,int ,int ,int ) ;
 struct siw_cep* sk_to_cep (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void siw_cm_llp_error_report(struct sock *sk)
{
 struct siw_cep *cep = sk_to_cep(sk);

 if (cep) {
  siw_dbg_cep(cep, "error %d, socket state: %d, cep state: %d\n",
       sk->sk_err, sk->sk_state, cep->state);
  cep->sk_error_report(sk);
 }
}
