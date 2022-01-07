
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsi_port {int n_head; } ;
struct TYPE_2__ {int notifier_call; } ;
struct hsi_client {void (* ehandler ) (struct hsi_client*,unsigned long) ;TYPE_1__ nb; } ;


 int EACCES ;
 int EINVAL ;
 int blocking_notifier_chain_register (int *,TYPE_1__*) ;
 int hsi_event_notifier_call ;
 struct hsi_port* hsi_get_port (struct hsi_client*) ;
 int hsi_port_claimed (struct hsi_client*) ;

int hsi_register_port_event(struct hsi_client *cl,
   void (*handler)(struct hsi_client *, unsigned long))
{
 struct hsi_port *port = hsi_get_port(cl);

 if (!handler || cl->ehandler)
  return -EINVAL;
 if (!hsi_port_claimed(cl))
  return -EACCES;
 cl->ehandler = handler;
 cl->nb.notifier_call = hsi_event_notifier_call;

 return blocking_notifier_chain_register(&port->n_head, &cl->nb);
}
