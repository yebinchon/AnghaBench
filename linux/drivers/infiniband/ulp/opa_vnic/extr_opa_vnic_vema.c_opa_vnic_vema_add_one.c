
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opa_vnic_vema_port {int dummy; } ;
struct opa_vnic_ctrl_port {int num_ports; struct ib_device* ibdev; } ;
struct ib_device {int phys_port_cnt; } ;


 int GFP_KERNEL ;
 int c_info (char*) ;
 int ib_set_client_data (struct ib_device*,int *,struct opa_vnic_ctrl_port*) ;
 struct opa_vnic_ctrl_port* kzalloc (int,int ) ;
 int opa_vnic_client ;
 int opa_vnic_ctrl_config_dev (struct opa_vnic_ctrl_port*,int) ;
 int rdma_cap_opa_vnic (struct ib_device*) ;
 int vema_register (struct opa_vnic_ctrl_port*) ;

__attribute__((used)) static void opa_vnic_vema_add_one(struct ib_device *device)
{
 struct opa_vnic_ctrl_port *cport;
 int rc, size = sizeof(*cport);

 if (!rdma_cap_opa_vnic(device))
  return;

 size += device->phys_port_cnt * sizeof(struct opa_vnic_vema_port);
 cport = kzalloc(size, GFP_KERNEL);
 if (!cport)
  return;

 cport->num_ports = device->phys_port_cnt;
 cport->ibdev = device;


 rc = vema_register(cport);
 if (!rc)
  c_info("VNIC client initialized\n");

 ib_set_client_data(device, &opa_vnic_client, cport);
 opa_vnic_ctrl_config_dev(cport, 1);
}
