
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ config_state; int eth_link_status; scalar_t__ oper_state; } ;
struct __opa_veswport_info {TYPE_1__ vport; } ;
struct opa_vnic_adapter {int lock; int netdev; struct __opa_veswport_info info; } ;


 int OPA_VNIC_ETH_LINK_DOWN ;
 int OPA_VNIC_ETH_LINK_UP ;
 scalar_t__ OPA_VNIC_STATE_DROP_ALL ;
 scalar_t__ OPA_VNIC_STATE_FORWARDING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_dormant_off (int ) ;
 int netif_dormant_on (int ) ;

__attribute__((used)) static void opa_vnic_update_state(struct opa_vnic_adapter *adapter, bool up)
{
 struct __opa_veswport_info *info = &adapter->info;

 mutex_lock(&adapter->lock);

 if ((info->vport.config_state == OPA_VNIC_STATE_FORWARDING) && up) {
  info->vport.oper_state = OPA_VNIC_STATE_FORWARDING;
  info->vport.eth_link_status = OPA_VNIC_ETH_LINK_UP;
 } else {
  info->vport.oper_state = OPA_VNIC_STATE_DROP_ALL;
  info->vport.eth_link_status = OPA_VNIC_ETH_LINK_DOWN;
 }

 if (info->vport.config_state == OPA_VNIC_STATE_FORWARDING)
  netif_dormant_off(adapter->netdev);
 else
  netif_dormant_on(adapter->netdev);
 mutex_unlock(&adapter->lock);
}
