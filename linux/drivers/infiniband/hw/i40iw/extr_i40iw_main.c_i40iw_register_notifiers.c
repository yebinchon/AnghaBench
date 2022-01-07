
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i40iw_inetaddr6_notifier ;
 int i40iw_inetaddr_notifier ;
 int i40iw_net_notifier ;
 int i40iw_netdevice_notifier ;
 int register_inet6addr_notifier (int *) ;
 int register_inetaddr_notifier (int *) ;
 int register_netdevice_notifier (int *) ;
 int register_netevent_notifier (int *) ;

__attribute__((used)) static void i40iw_register_notifiers(void)
{
 register_inetaddr_notifier(&i40iw_inetaddr_notifier);
 register_inet6addr_notifier(&i40iw_inetaddr6_notifier);
 register_netevent_notifier(&i40iw_net_notifier);
 register_netdevice_notifier(&i40iw_netdevice_notifier);
}
