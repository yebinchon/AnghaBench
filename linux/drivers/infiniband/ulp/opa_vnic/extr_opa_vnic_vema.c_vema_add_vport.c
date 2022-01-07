
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opa_vnic_vema_port {int vports; int port_num; struct opa_vnic_ctrl_port* cport; } ;
struct opa_vnic_ctrl_port {int ibdev; } ;
struct opa_vnic_adapter {struct opa_vnic_ctrl_port* cport; } ;


 struct opa_vnic_adapter* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IS_ERR (struct opa_vnic_adapter*) ;
 struct opa_vnic_adapter* opa_vnic_add_netdev (int ,int ,int ) ;
 int opa_vnic_rem_netdev (struct opa_vnic_adapter*) ;
 int xa_insert (int *,int ,struct opa_vnic_adapter*,int ) ;

__attribute__((used)) static struct opa_vnic_adapter *vema_add_vport(struct opa_vnic_vema_port *port,
            u8 vport_num)
{
 struct opa_vnic_ctrl_port *cport = port->cport;
 struct opa_vnic_adapter *adapter;

 adapter = opa_vnic_add_netdev(cport->ibdev, port->port_num, vport_num);
 if (!IS_ERR(adapter)) {
  int rc;

  adapter->cport = cport;
  rc = xa_insert(&port->vports, vport_num, adapter, GFP_KERNEL);
  if (rc < 0) {
   opa_vnic_rem_netdev(adapter);
   adapter = ERR_PTR(rc);
  }
 }

 return adapter;
}
