
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opa_vnic_ctrl_port {int num_ports; int ibdev; } ;
struct ib_port_modify {void* clr_port_cap_mask; void* set_port_cap_mask; int member_0; } ;


 int IB_PORT_OPA_MASK_CHG ;
 void* OPA_CAP_MASK3_IsEthOnFabricSupported ;
 int ib_modify_port (int ,int,int ,struct ib_port_modify*) ;

__attribute__((used)) static void opa_vnic_ctrl_config_dev(struct opa_vnic_ctrl_port *cport, bool en)
{
 struct ib_port_modify pm = { 0 };
 int i;

 if (en)
  pm.set_port_cap_mask = OPA_CAP_MASK3_IsEthOnFabricSupported;
 else
  pm.clr_port_cap_mask = OPA_CAP_MASK3_IsEthOnFabricSupported;

 for (i = 1; i <= cport->num_ports; i++)
  ib_modify_port(cport->ibdev, i, IB_PORT_OPA_MASK_CHG, &pm);
}
