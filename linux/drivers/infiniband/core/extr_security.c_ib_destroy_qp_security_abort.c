
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp_security {int error_comps_pending; int destroying; int mutex; TYPE_1__* ports_pkeys; int error_complete; } ;
struct TYPE_2__ {int alt; int main; } ;


 int check_qp_port_pkey_settings (TYPE_1__*,struct ib_qp_security*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int port_pkey_list_insert (int *) ;
 int qp_to_error (struct ib_qp_security*) ;
 int wait_for_completion (int *) ;

void ib_destroy_qp_security_abort(struct ib_qp_security *sec)
{
 int ret;
 int i;


 if (!sec)
  return;





 for (i = 0; i < sec->error_comps_pending; i++)
  wait_for_completion(&sec->error_complete);

 mutex_lock(&sec->mutex);
 sec->destroying = 0;
 if (sec->ports_pkeys) {
  port_pkey_list_insert(&sec->ports_pkeys->main);
  port_pkey_list_insert(&sec->ports_pkeys->alt);
 }

 ret = check_qp_port_pkey_settings(sec->ports_pkeys, sec);
 if (ret)
  qp_to_error(sec);

 mutex_unlock(&sec->mutex);
}
