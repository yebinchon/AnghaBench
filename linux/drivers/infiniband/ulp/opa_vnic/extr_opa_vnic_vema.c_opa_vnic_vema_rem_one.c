
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opa_vnic_ctrl_port {int dummy; } ;
struct ib_device {int dummy; } ;


 int c_info (char*) ;
 int kfree (struct opa_vnic_ctrl_port*) ;
 int opa_vnic_ctrl_config_dev (struct opa_vnic_ctrl_port*,int) ;
 int vema_unregister (struct opa_vnic_ctrl_port*) ;

__attribute__((used)) static void opa_vnic_vema_rem_one(struct ib_device *device,
      void *client_data)
{
 struct opa_vnic_ctrl_port *cport = client_data;

 if (!cport)
  return;

 c_info("removing VNIC client\n");
 opa_vnic_ctrl_config_dev(cport, 0);
 vema_unregister(cport);
 kfree(cport);
}
