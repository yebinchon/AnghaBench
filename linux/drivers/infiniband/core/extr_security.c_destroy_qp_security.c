
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp_security {struct ib_qp_security* ports_pkeys; int security; } ;


 int kfree (struct ib_qp_security*) ;
 int security_ib_free_security (int ) ;

__attribute__((used)) static void destroy_qp_security(struct ib_qp_security *sec)
{
 security_ib_free_security(sec->security);
 kfree(sec->ports_pkeys);
 kfree(sec);
}
