
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_dev {int ndev; } ;


 scalar_t__ netif_carrier_ok (int ) ;
 scalar_t__ netif_running (int ) ;
 int rxe_port_down (struct rxe_dev*) ;
 int rxe_port_up (struct rxe_dev*) ;

void rxe_set_port_state(struct rxe_dev *rxe)
{
 if (netif_running(rxe->ndev) && netif_carrier_ok(rxe->ndev))
  rxe_port_up(rxe);
 else
  rxe_port_down(rxe);
}
