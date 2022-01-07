
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_port {int n_head; } ;
struct hsi_client {int * ehandler; int nb; } ;


 int WARN_ON (int) ;
 int blocking_notifier_chain_unregister (int *,int *) ;
 struct hsi_port* hsi_get_port (struct hsi_client*) ;
 int hsi_port_claimed (struct hsi_client*) ;

int hsi_unregister_port_event(struct hsi_client *cl)
{
 struct hsi_port *port = hsi_get_port(cl);
 int err;

 WARN_ON(!hsi_port_claimed(cl));

 err = blocking_notifier_chain_unregister(&port->n_head, &cl->nb);
 if (!err)
  cl->ehandler = ((void*)0);

 return err;
}
