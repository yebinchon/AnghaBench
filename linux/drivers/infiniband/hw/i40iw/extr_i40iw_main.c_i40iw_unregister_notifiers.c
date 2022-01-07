
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i40iw_inetaddr6_notifier ;
 int i40iw_inetaddr_notifier ;
 int i40iw_net_notifier ;
 int i40iw_netdevice_notifier ;
 int unregister_inet6addr_notifier (int *) ;
 int unregister_inetaddr_notifier (int *) ;
 int unregister_netdevice_notifier (int *) ;
 int unregister_netevent_notifier (int *) ;

__attribute__((used)) static void i40iw_unregister_notifiers(void)
{
 unregister_netevent_notifier(&i40iw_net_notifier);
 unregister_inetaddr_notifier(&i40iw_inetaddr_notifier);
 unregister_inet6addr_notifier(&i40iw_inetaddr6_notifier);
 unregister_netdevice_notifier(&i40iw_netdevice_notifier);
}
