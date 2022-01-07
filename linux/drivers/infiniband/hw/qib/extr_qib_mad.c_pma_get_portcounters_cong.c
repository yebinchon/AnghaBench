
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct qib_verbs_counters {int symbol_error_counter; int link_error_recovery_counter; int link_downed_counter; int port_rcv_errors; int port_rcv_remphys_errors; int port_xmit_discards; int local_link_integrity_errors; int excessive_buffer_overrun_errors; int vl15_dropped; scalar_t__ port_rcv_packets; scalar_t__ port_xmit_packets; scalar_t__ port_rcv_data; scalar_t__ port_xmit_data; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_7__ {TYPE_2__ rvp; } ;
struct qib_pportdata {TYPE_3__ ibport_data; } ;
struct TYPE_8__ {scalar_t__ n_vl15_dropped; } ;
struct qib_ibport {scalar_t__ z_port_rcv_packets; scalar_t__ z_port_xmit_packets; scalar_t__ z_port_rcv_data; scalar_t__ z_port_xmit_data; TYPE_4__ rvp; scalar_t__ z_vl15_dropped; scalar_t__ z_excessive_buffer_overrun_errors; scalar_t__ z_local_link_integrity_errors; scalar_t__ z_port_xmit_discards; scalar_t__ z_port_rcv_remphys_errors; scalar_t__ z_port_rcv_errors; scalar_t__ z_link_downed_counter; scalar_t__ z_link_error_recovery_counter; scalar_t__ z_symbol_error_counter; } ;
struct qib_devdata {int psxmitwait_check_rate; int psxmitwait_supported; } ;
struct ib_smp {int dummy; } ;
struct ib_pma_portcounters_cong {int link_error_recovery_counter; int link_downed_counter; int link_overrun_errors; void* vl15_dropped; void* port_xmit_discards; void* port_rcv_remphys_errors; void* port_rcv_errors; void* symbol_error_counter; void* port_rcv_packets; void* port_xmit_packets; void* port_rcv_data; void* port_xmit_data; void* port_xmit_wait; void* port_adr_events; void* port_check_rate; } ;
struct TYPE_5__ {int status; int attr_mod; } ;
struct ib_pma_mad {scalar_t__ data; scalar_t__ reserved; TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;


 int IB_SMP_INVALID_FIELD ;
 int IB_SMP_UNSUP_METH_ATTR ;
 int QIB_XMIT_RATE_PICO ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be64 (scalar_t__) ;
 struct qib_devdata* dd_from_ppd (struct qib_pportdata*) ;
 int memset (scalar_t__,int ,int) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int qib_get_counters (struct qib_pportdata*,struct qib_verbs_counters*) ;
 int reply (struct ib_smp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qib_ibport* to_iport (struct ib_device*,scalar_t__) ;
 scalar_t__ xmit_wait_get_value_delta (struct qib_pportdata*) ;

__attribute__((used)) static int pma_get_portcounters_cong(struct ib_pma_mad *pmp,
         struct ib_device *ibdev, u8 port)
{

 struct ib_pma_portcounters_cong *p =
  (struct ib_pma_portcounters_cong *)pmp->reserved;
 struct qib_verbs_counters cntrs;
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 struct qib_devdata *dd = dd_from_ppd(ppd);
 u32 port_select = be32_to_cpu(pmp->mad_hdr.attr_mod) & 0xFF;
 u64 xmit_wait_counter;
 unsigned long flags;





 if (!dd->psxmitwait_supported)
  pmp->mad_hdr.status |= IB_SMP_UNSUP_METH_ATTR;
 if (port_select != port)
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;

 qib_get_counters(ppd, &cntrs);
 spin_lock_irqsave(&ppd->ibport_data.rvp.lock, flags);
 xmit_wait_counter = xmit_wait_get_value_delta(ppd);
 spin_unlock_irqrestore(&ppd->ibport_data.rvp.lock, flags);


 cntrs.symbol_error_counter -= ibp->z_symbol_error_counter;
 cntrs.link_error_recovery_counter -=
  ibp->z_link_error_recovery_counter;
 cntrs.link_downed_counter -= ibp->z_link_downed_counter;
 cntrs.port_rcv_errors -= ibp->z_port_rcv_errors;
 cntrs.port_rcv_remphys_errors -=
  ibp->z_port_rcv_remphys_errors;
 cntrs.port_xmit_discards -= ibp->z_port_xmit_discards;
 cntrs.local_link_integrity_errors -=
  ibp->z_local_link_integrity_errors;
 cntrs.excessive_buffer_overrun_errors -=
  ibp->z_excessive_buffer_overrun_errors;
 cntrs.vl15_dropped -= ibp->z_vl15_dropped;
 cntrs.vl15_dropped += ibp->rvp.n_vl15_dropped;
 cntrs.port_xmit_data -= ibp->z_port_xmit_data;
 cntrs.port_rcv_data -= ibp->z_port_rcv_data;
 cntrs.port_xmit_packets -= ibp->z_port_xmit_packets;
 cntrs.port_rcv_packets -= ibp->z_port_rcv_packets;

 memset(pmp->reserved, 0, sizeof(pmp->reserved));
 memset(pmp->data, 0, sizeof(pmp->data));





 p->port_check_rate =
  cpu_to_be16((QIB_XMIT_RATE_PICO << 13) |
       (dd->psxmitwait_check_rate &
        ~(QIB_XMIT_RATE_PICO << 13)));
 p->port_adr_events = cpu_to_be64(0);
 p->port_xmit_wait = cpu_to_be64(xmit_wait_counter);
 p->port_xmit_data = cpu_to_be64(cntrs.port_xmit_data);
 p->port_rcv_data = cpu_to_be64(cntrs.port_rcv_data);
 p->port_xmit_packets =
  cpu_to_be64(cntrs.port_xmit_packets);
 p->port_rcv_packets =
  cpu_to_be64(cntrs.port_rcv_packets);
 if (cntrs.symbol_error_counter > 0xFFFFUL)
  p->symbol_error_counter = cpu_to_be16(0xFFFF);
 else
  p->symbol_error_counter =
   cpu_to_be16(
    (u16)cntrs.symbol_error_counter);
 if (cntrs.link_error_recovery_counter > 0xFFUL)
  p->link_error_recovery_counter = 0xFF;
 else
  p->link_error_recovery_counter =
   (u8)cntrs.link_error_recovery_counter;
 if (cntrs.link_downed_counter > 0xFFUL)
  p->link_downed_counter = 0xFF;
 else
  p->link_downed_counter =
   (u8)cntrs.link_downed_counter;
 if (cntrs.port_rcv_errors > 0xFFFFUL)
  p->port_rcv_errors = cpu_to_be16(0xFFFF);
 else
  p->port_rcv_errors =
   cpu_to_be16((u16) cntrs.port_rcv_errors);
 if (cntrs.port_rcv_remphys_errors > 0xFFFFUL)
  p->port_rcv_remphys_errors = cpu_to_be16(0xFFFF);
 else
  p->port_rcv_remphys_errors =
   cpu_to_be16(
    (u16)cntrs.port_rcv_remphys_errors);
 if (cntrs.port_xmit_discards > 0xFFFFUL)
  p->port_xmit_discards = cpu_to_be16(0xFFFF);
 else
  p->port_xmit_discards =
   cpu_to_be16((u16)cntrs.port_xmit_discards);
 if (cntrs.local_link_integrity_errors > 0xFUL)
  cntrs.local_link_integrity_errors = 0xFUL;
 if (cntrs.excessive_buffer_overrun_errors > 0xFUL)
  cntrs.excessive_buffer_overrun_errors = 0xFUL;
 p->link_overrun_errors = (cntrs.local_link_integrity_errors << 4) |
  cntrs.excessive_buffer_overrun_errors;
 if (cntrs.vl15_dropped > 0xFFFFUL)
  p->vl15_dropped = cpu_to_be16(0xFFFF);
 else
  p->vl15_dropped = cpu_to_be16((u16)cntrs.vl15_dropped);

 return reply((struct ib_smp *)pmp);
}
