
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_port {int n_head; } ;


 int blocking_notifier_call_chain (int *,unsigned long,int *) ;

int hsi_event(struct hsi_port *port, unsigned long event)
{
 return blocking_notifier_call_chain(&port->n_head, event, ((void*)0));
}
