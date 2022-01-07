
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qib_verbs_counters {int port_rcv_packets; int port_xmit_packets; int port_rcv_data; int port_xmit_data; int vl15_dropped; int excessive_buffer_overrun_errors; int local_link_integrity_errors; int port_xmit_discards; int port_rcv_remphys_errors; int port_rcv_errors; int link_downed_counter; int link_error_recovery_counter; int symbol_error_counter; } ;
struct qib_pportdata {int dummy; } ;
struct TYPE_2__ {scalar_t__ n_vl15_dropped; } ;
struct qib_ibport {int z_port_rcv_packets; int z_port_xmit_packets; int z_port_rcv_data; int z_port_xmit_data; int z_vl15_dropped; TYPE_1__ rvp; int z_excessive_buffer_overrun_errors; int z_local_link_integrity_errors; int z_port_xmit_discards; int z_port_rcv_remphys_errors; int z_port_rcv_errors; int z_link_downed_counter; int z_link_error_recovery_counter; int z_symbol_error_counter; } ;
struct ib_pma_portcounters {int counter_select; } ;
struct ib_pma_mad {scalar_t__ data; } ;
struct ib_device {int dummy; } ;


 int IB_PMA_SEL_EXCESSIVE_BUFFER_OVERRUNS ;
 int IB_PMA_SEL_LINK_DOWNED ;
 int IB_PMA_SEL_LINK_ERROR_RECOVERY ;
 int IB_PMA_SEL_LOCAL_LINK_INTEGRITY_ERRORS ;
 int IB_PMA_SEL_PORT_RCV_DATA ;
 int IB_PMA_SEL_PORT_RCV_ERRORS ;
 int IB_PMA_SEL_PORT_RCV_PACKETS ;
 int IB_PMA_SEL_PORT_RCV_REMPHYS_ERRORS ;
 int IB_PMA_SEL_PORT_VL15_DROPPED ;
 int IB_PMA_SEL_PORT_XMIT_DATA ;
 int IB_PMA_SEL_PORT_XMIT_DISCARDS ;
 int IB_PMA_SEL_PORT_XMIT_PACKETS ;
 int IB_PMA_SEL_SYMBOL_ERROR ;
 int pma_get_portcounters (struct ib_pma_mad*,struct ib_device*,int ) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int qib_get_counters (struct qib_pportdata*,struct qib_verbs_counters*) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int pma_set_portcounters(struct ib_pma_mad *pmp,
    struct ib_device *ibdev, u8 port)
{
 struct ib_pma_portcounters *p = (struct ib_pma_portcounters *)
  pmp->data;
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 struct qib_verbs_counters cntrs;





 qib_get_counters(ppd, &cntrs);

 if (p->counter_select & IB_PMA_SEL_SYMBOL_ERROR)
  ibp->z_symbol_error_counter = cntrs.symbol_error_counter;

 if (p->counter_select & IB_PMA_SEL_LINK_ERROR_RECOVERY)
  ibp->z_link_error_recovery_counter =
   cntrs.link_error_recovery_counter;

 if (p->counter_select & IB_PMA_SEL_LINK_DOWNED)
  ibp->z_link_downed_counter = cntrs.link_downed_counter;

 if (p->counter_select & IB_PMA_SEL_PORT_RCV_ERRORS)
  ibp->z_port_rcv_errors = cntrs.port_rcv_errors;

 if (p->counter_select & IB_PMA_SEL_PORT_RCV_REMPHYS_ERRORS)
  ibp->z_port_rcv_remphys_errors =
   cntrs.port_rcv_remphys_errors;

 if (p->counter_select & IB_PMA_SEL_PORT_XMIT_DISCARDS)
  ibp->z_port_xmit_discards = cntrs.port_xmit_discards;

 if (p->counter_select & IB_PMA_SEL_LOCAL_LINK_INTEGRITY_ERRORS)
  ibp->z_local_link_integrity_errors =
   cntrs.local_link_integrity_errors;

 if (p->counter_select & IB_PMA_SEL_EXCESSIVE_BUFFER_OVERRUNS)
  ibp->z_excessive_buffer_overrun_errors =
   cntrs.excessive_buffer_overrun_errors;

 if (p->counter_select & IB_PMA_SEL_PORT_VL15_DROPPED) {
  ibp->rvp.n_vl15_dropped = 0;
  ibp->z_vl15_dropped = cntrs.vl15_dropped;
 }

 if (p->counter_select & IB_PMA_SEL_PORT_XMIT_DATA)
  ibp->z_port_xmit_data = cntrs.port_xmit_data;

 if (p->counter_select & IB_PMA_SEL_PORT_RCV_DATA)
  ibp->z_port_rcv_data = cntrs.port_rcv_data;

 if (p->counter_select & IB_PMA_SEL_PORT_XMIT_PACKETS)
  ibp->z_port_xmit_packets = cntrs.port_xmit_packets;

 if (p->counter_select & IB_PMA_SEL_PORT_RCV_PACKETS)
  ibp->z_port_rcv_packets = cntrs.port_rcv_packets;

 return pma_get_portcounters(pmp, ibdev, port);
}
