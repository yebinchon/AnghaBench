
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opa_vnic_adapter {int netdev; TYPE_1__* rn_ops; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* ndo_stop ) (int ) ;} ;


 int OPA_VESWPORT_TRAP_ETH_LINK_STATUS_CHANGE ;
 struct opa_vnic_adapter* opa_vnic_priv (struct net_device*) ;
 int opa_vnic_update_state (struct opa_vnic_adapter*,int) ;
 int opa_vnic_vema_report_event (struct opa_vnic_adapter*,int ) ;
 int stub1 (int ) ;
 int v_dbg (char*,int) ;

__attribute__((used)) static int opa_netdev_close(struct net_device *netdev)
{
 struct opa_vnic_adapter *adapter = opa_vnic_priv(netdev);
 int rc;

 rc = adapter->rn_ops->ndo_stop(adapter->netdev);
 if (rc) {
  v_dbg("close failed %d\n", rc);
  return rc;
 }


 opa_vnic_update_state(adapter, 0);
 opa_vnic_vema_report_event(adapter,
       OPA_VESWPORT_TRAP_ETH_LINK_STATUS_CHANGE);
 return 0;
}
