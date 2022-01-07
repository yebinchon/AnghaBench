
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp_security {int destroying; int mutex; int error_list_count; int error_comps_pending; TYPE_1__* ports_pkeys; } ;
struct TYPE_2__ {int alt; int main; } ;


 int atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int port_pkey_list_remove (int *) ;

void ib_destroy_qp_security_begin(struct ib_qp_security *sec)
{

 if (!sec)
  return;

 mutex_lock(&sec->mutex);




 if (sec->ports_pkeys) {
  port_pkey_list_remove(&sec->ports_pkeys->main);
  port_pkey_list_remove(&sec->ports_pkeys->alt);
 }





 sec->destroying = 1;




 sec->error_comps_pending = atomic_read(&sec->error_list_count);

 mutex_unlock(&sec->mutex);
}
