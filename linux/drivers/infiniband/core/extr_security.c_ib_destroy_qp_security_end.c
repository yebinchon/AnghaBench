
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp_security {int error_comps_pending; int error_complete; } ;


 int destroy_qp_security (struct ib_qp_security*) ;
 int wait_for_completion (int *) ;

void ib_destroy_qp_security_end(struct ib_qp_security *sec)
{
 int i;


 if (!sec)
  return;






 for (i = 0; i < sec->error_comps_pending; i++)
  wait_for_completion(&sec->error_complete);

 destroy_qp_security(sec);
}
