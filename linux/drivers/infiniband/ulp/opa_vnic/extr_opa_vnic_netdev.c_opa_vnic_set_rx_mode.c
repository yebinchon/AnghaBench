
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int OPA_VESWPORT_TRAP_IFACE_MCAST_MAC_CHANGE ;
 int OPA_VESWPORT_TRAP_IFACE_UCAST_MAC_CHANGE ;
 int opa_vnic_mac_send_event (struct net_device*,int ) ;

__attribute__((used)) static void opa_vnic_set_rx_mode(struct net_device *netdev)
{
 opa_vnic_mac_send_event(netdev,
    OPA_VESWPORT_TRAP_IFACE_UCAST_MAC_CHANGE);

 opa_vnic_mac_send_event(netdev,
    OPA_VESWPORT_TRAP_IFACE_MCAST_MAC_CHANGE);
}
