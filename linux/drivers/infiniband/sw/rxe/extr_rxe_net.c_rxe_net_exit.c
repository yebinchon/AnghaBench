
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sk4; int sk6; } ;


 TYPE_1__ recv_sockets ;
 int rxe_net_notifier ;
 int rxe_release_udp_tunnel (int ) ;
 int unregister_netdevice_notifier (int *) ;

void rxe_net_exit(void)
{
 rxe_release_udp_tunnel(recv_sockets.sk6);
 rxe_release_udp_tunnel(recv_sockets.sk4);
 unregister_netdevice_notifier(&rxe_net_notifier);
}
