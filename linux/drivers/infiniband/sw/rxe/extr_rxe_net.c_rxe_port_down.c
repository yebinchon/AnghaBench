
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct rxe_port {TYPE_1__ attr; } ;
struct TYPE_4__ {int dev; } ;
struct rxe_dev {TYPE_2__ ib_dev; struct rxe_port port; } ;


 int IB_EVENT_PORT_ERR ;
 int IB_PORT_DOWN ;
 int RXE_CNT_LINK_DOWNED ;
 int dev_info (int *,char*) ;
 int rxe_counter_inc (struct rxe_dev*,int ) ;
 int rxe_port_event (struct rxe_dev*,int ) ;

void rxe_port_down(struct rxe_dev *rxe)
{
 struct rxe_port *port;

 port = &rxe->port;
 port->attr.state = IB_PORT_DOWN;

 rxe_port_event(rxe, IB_EVENT_PORT_ERR);
 rxe_counter_inc(rxe, RXE_CNT_LINK_DOWNED);
 dev_info(&rxe->ib_dev.dev, "set down\n");
}
