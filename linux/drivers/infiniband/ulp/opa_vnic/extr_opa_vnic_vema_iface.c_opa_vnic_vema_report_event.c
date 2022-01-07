
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int encap_slid; int port_num; } ;
struct TYPE_4__ {int vesw_id; int fabric_id; } ;
struct __opa_veswport_info {TYPE_1__ vport; TYPE_2__ vesw; } ;
struct opa_vnic_adapter {int vport_num; int port_num; struct __opa_veswport_info info; } ;
struct __opa_veswport_trap {int opcode; int veswportindex; int opaportnum; int veswportnum; int veswid; int fabric_id; } ;


 int opa_vnic_vema_send_trap (struct opa_vnic_adapter*,struct __opa_veswport_trap*,int ) ;

void opa_vnic_vema_report_event(struct opa_vnic_adapter *adapter, u8 event)
{
 struct __opa_veswport_info *info = &adapter->info;
 struct __opa_veswport_trap trap_data;

 trap_data.fabric_id = info->vesw.fabric_id;
 trap_data.veswid = info->vesw.vesw_id;
 trap_data.veswportnum = info->vport.port_num;
 trap_data.opaportnum = adapter->port_num;
 trap_data.veswportindex = adapter->vport_num;
 trap_data.opcode = event;

 opa_vnic_vema_send_trap(adapter, &trap_data, info->vport.encap_slid);
}
