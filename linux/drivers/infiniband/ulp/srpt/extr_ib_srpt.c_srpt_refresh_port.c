
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int interface_id; int subnet_prefix; } ;
struct TYPE_10__ {TYPE_3__ global; } ;
struct TYPE_7__ {struct srpt_port* priv; } ;
struct TYPE_6__ {struct srpt_port* priv; } ;
struct srpt_port {int port; TYPE_4__* sdev; int * mad_agent; int port_gid; TYPE_5__ gid; TYPE_2__ port_gid_wwn; int port_guid; TYPE_1__ port_guid_wwn; int lid; int sm_lid; } ;
struct ib_port_modify {void* clr_port_cap_mask; void* set_port_cap_mask; int method_mask; int mgmt_class_version; int mgmt_class; } ;
struct ib_port_attr {int lid; int sm_lid; } ;
struct ib_mad_reg_req {void* clr_port_cap_mask; void* set_port_cap_mask; int method_mask; int mgmt_class_version; int mgmt_class; } ;
typedef int reg_req ;
typedef int port_modify ;
struct TYPE_9__ {int device; } ;


 int IB_MGMT_BASE_VERSION ;
 int IB_MGMT_CLASS_DEVICE_MGMT ;
 int IB_MGMT_METHOD_GET ;
 int IB_MGMT_METHOD_SET ;
 void* IB_PORT_DEVICE_MGMT_SUP ;
 int IB_QPT_GSI ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int be64_to_cpu (int ) ;
 int ib_modify_port (int ,int ,int ,struct ib_port_modify*) ;
 int ib_query_port (int ,int ,struct ib_port_attr*) ;
 int * ib_register_mad_agent (int ,int ,int ,struct ib_port_modify*,int ,int ,int ,struct srpt_port*,int ) ;
 int memset (struct ib_port_modify*,int ,int) ;
 int rdma_query_gid (int ,int ,int ,TYPE_5__*) ;
 int set_bit (int ,int ) ;
 int snprintf (int ,int,char*,int ,int ) ;
 int srpt_format_guid (int ,int,int *) ;
 int srpt_mad_recv_handler ;
 int srpt_mad_send_handler ;

__attribute__((used)) static int srpt_refresh_port(struct srpt_port *sport)
{
 struct ib_mad_reg_req reg_req;
 struct ib_port_modify port_modify;
 struct ib_port_attr port_attr;
 int ret;

 memset(&port_modify, 0, sizeof(port_modify));
 port_modify.set_port_cap_mask = IB_PORT_DEVICE_MGMT_SUP;
 port_modify.clr_port_cap_mask = 0;

 ret = ib_modify_port(sport->sdev->device, sport->port, 0, &port_modify);
 if (ret)
  goto err_mod_port;

 ret = ib_query_port(sport->sdev->device, sport->port, &port_attr);
 if (ret)
  goto err_query_port;

 sport->sm_lid = port_attr.sm_lid;
 sport->lid = port_attr.lid;

 ret = rdma_query_gid(sport->sdev->device, sport->port, 0, &sport->gid);
 if (ret)
  goto err_query_port;

 sport->port_guid_wwn.priv = sport;
 srpt_format_guid(sport->port_guid, sizeof(sport->port_guid),
    &sport->gid.global.interface_id);
 sport->port_gid_wwn.priv = sport;
 snprintf(sport->port_gid, sizeof(sport->port_gid),
   "0x%016llx%016llx",
   be64_to_cpu(sport->gid.global.subnet_prefix),
   be64_to_cpu(sport->gid.global.interface_id));

 if (!sport->mad_agent) {
  memset(&reg_req, 0, sizeof(reg_req));
  reg_req.mgmt_class = IB_MGMT_CLASS_DEVICE_MGMT;
  reg_req.mgmt_class_version = IB_MGMT_BASE_VERSION;
  set_bit(IB_MGMT_METHOD_GET, reg_req.method_mask);
  set_bit(IB_MGMT_METHOD_SET, reg_req.method_mask);

  sport->mad_agent = ib_register_mad_agent(sport->sdev->device,
        sport->port,
        IB_QPT_GSI,
        &reg_req, 0,
        srpt_mad_send_handler,
        srpt_mad_recv_handler,
        sport, 0);
  if (IS_ERR(sport->mad_agent)) {
   ret = PTR_ERR(sport->mad_agent);
   sport->mad_agent = ((void*)0);
   goto err_query_port;
  }
 }

 return 0;

err_query_port:

 port_modify.set_port_cap_mask = 0;
 port_modify.clr_port_cap_mask = IB_PORT_DEVICE_MGMT_SUP;
 ib_modify_port(sport->sdev->device, sport->port, 0, &port_modify);

err_mod_port:

 return ret;
}
