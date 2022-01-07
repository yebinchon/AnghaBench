
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct siw_cep {struct socket* sock; } ;
struct TYPE_3__ {struct siw_cep* sk_user_data; } ;


 int siw_cep_get (struct siw_cep*) ;
 int siw_sk_assign_cm_upcalls (TYPE_1__*) ;
 int siw_sk_save_upcalls (TYPE_1__*) ;

__attribute__((used)) static void siw_cep_socket_assoc(struct siw_cep *cep, struct socket *s)
{
 cep->sock = s;
 siw_cep_get(cep);
 s->sk->sk_user_data = cep;

 siw_sk_save_upcalls(s->sk);
 siw_sk_assign_cm_upcalls(s->sk);
}
