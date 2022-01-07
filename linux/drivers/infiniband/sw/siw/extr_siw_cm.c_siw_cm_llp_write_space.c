
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct siw_cep {int state; } ;


 int siw_dbg_cep (struct siw_cep*,char*,int ) ;
 struct siw_cep* sk_to_cep (struct sock*) ;

__attribute__((used)) static void siw_cm_llp_write_space(struct sock *sk)
{
 struct siw_cep *cep = sk_to_cep(sk);

 if (cep)
  siw_dbg_cep(cep, "state: %d\n", cep->state);
}
