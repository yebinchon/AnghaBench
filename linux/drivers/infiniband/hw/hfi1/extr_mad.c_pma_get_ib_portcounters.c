
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct ib_pma_portcounters {void* port_select; int link_error_recovery_counter; int link_downed_counter; int port_xmit_constraint_errors; int port_rcv_constraint_errors; scalar_t__ vl15_dropped; void* link_overrun_errors; void* port_xmit_discards; void* port_rcv_switch_relay_errors; void* port_rcv_remphys_errors; void* port_rcv_errors; scalar_t__ symbol_error_counter; } ;
struct TYPE_2__ {scalar_t__ attr_mod; int status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct _port_ectrs {int excessive_buffer_overruns; int local_link_integrity_errors; int port_rcv_constraint_errors; int port_xmit_constraint_errors; int port_xmit_discards; int port_rcv_switch_relay_errors; int port_rcv_remote_physical_errors; int port_rcv_errors; int link_downed; int link_error_recovery; } ;
typedef int rsp ;


 int IB_SMP_INVALID_FIELD ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 void* cpu_to_be16 (int) ;
 int memset (struct _port_ectrs*,int ,int) ;
 int pma_get_opa_port_ectrs (struct ib_device*,struct _port_ectrs*,void*) ;
 int reply (struct ib_mad_hdr*) ;

__attribute__((used)) static int pma_get_ib_portcounters(struct ib_pma_mad *pmp,
       struct ib_device *ibdev, u8 port)
{
 struct ib_pma_portcounters *p = (struct ib_pma_portcounters *)
  pmp->data;
 struct _port_ectrs rsp;
 u64 temp_link_overrun_errors;
 u64 temp_64;
 u32 temp_32;

 memset(&rsp, 0, sizeof(rsp));
 pma_get_opa_port_ectrs(ibdev, &rsp, port);

 if (pmp->mad_hdr.attr_mod != 0 || p->port_select != port) {
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
  goto bail;
 }

 p->symbol_error_counter = 0;

 temp_32 = be32_to_cpu(rsp.link_error_recovery);
 if (temp_32 > 0xFFUL)
  p->link_error_recovery_counter = 0xFF;
 else
  p->link_error_recovery_counter = (u8)temp_32;

 temp_32 = be32_to_cpu(rsp.link_downed);
 if (temp_32 > 0xFFUL)
  p->link_downed_counter = 0xFF;
 else
  p->link_downed_counter = (u8)temp_32;

 temp_64 = be64_to_cpu(rsp.port_rcv_errors);
 if (temp_64 > 0xFFFFUL)
  p->port_rcv_errors = cpu_to_be16(0xFFFF);
 else
  p->port_rcv_errors = cpu_to_be16((u16)temp_64);

 temp_64 = be64_to_cpu(rsp.port_rcv_remote_physical_errors);
 if (temp_64 > 0xFFFFUL)
  p->port_rcv_remphys_errors = cpu_to_be16(0xFFFF);
 else
  p->port_rcv_remphys_errors = cpu_to_be16((u16)temp_64);

 temp_64 = be64_to_cpu(rsp.port_rcv_switch_relay_errors);
 p->port_rcv_switch_relay_errors = cpu_to_be16((u16)temp_64);

 temp_64 = be64_to_cpu(rsp.port_xmit_discards);
 if (temp_64 > 0xFFFFUL)
  p->port_xmit_discards = cpu_to_be16(0xFFFF);
 else
  p->port_xmit_discards = cpu_to_be16((u16)temp_64);

 temp_64 = be64_to_cpu(rsp.port_xmit_constraint_errors);
 if (temp_64 > 0xFFUL)
  p->port_xmit_constraint_errors = 0xFF;
 else
  p->port_xmit_constraint_errors = (u8)temp_64;

 temp_64 = be64_to_cpu(rsp.port_rcv_constraint_errors);
 if (temp_64 > 0xFFUL)
  p->port_rcv_constraint_errors = 0xFFUL;
 else
  p->port_rcv_constraint_errors = (u8)temp_64;


 temp_64 = be64_to_cpu(rsp.local_link_integrity_errors);
 if (temp_64 > 0xFUL)
  temp_64 = 0xFUL;

 temp_link_overrun_errors = temp_64 << 4;

 temp_64 = be64_to_cpu(rsp.excessive_buffer_overruns);
 if (temp_64 > 0xFUL)
  temp_64 = 0xFUL;
 temp_link_overrun_errors |= temp_64;

 p->link_overrun_errors = (u8)temp_link_overrun_errors;

 p->vl15_dropped = 0;

bail:
 return reply((struct ib_mad_hdr *)pmp);
}
