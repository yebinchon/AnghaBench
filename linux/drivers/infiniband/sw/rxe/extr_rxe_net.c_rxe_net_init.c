
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sk6; } ;


 int pr_err (char*) ;
 TYPE_1__ recv_sockets ;
 int register_netdevice_notifier (int *) ;
 int rxe_net_exit () ;
 int rxe_net_ipv4_init () ;
 int rxe_net_ipv6_init () ;
 int rxe_net_notifier ;

int rxe_net_init(void)
{
 int err;

 recv_sockets.sk6 = ((void*)0);

 err = rxe_net_ipv4_init();
 if (err)
  return err;
 err = rxe_net_ipv6_init();
 if (err)
  goto err_out;
 err = register_netdevice_notifier(&rxe_net_notifier);
 if (err) {
  pr_err("Failed to register netdev notifier\n");
  goto err_out;
 }
 return 0;
err_out:
 rxe_net_exit();
 return err;
}
