
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qib_verbs_counters {int vl15_dropped; int excessive_buffer_overrun_errors; int local_link_integrity_errors; int port_rcv_packets; int port_xmit_packets; int port_rcv_data; int port_xmit_data; int port_xmit_discards; int port_rcv_remphys_errors; int port_rcv_errors; int link_downed_counter; int link_error_recovery_counter; int symbol_error_counter; } ;
struct TYPE_4__ {int port_cap_flags; int * qp; int * pma_counter_select; int sm_lid; int gid_prefix; int lock; } ;
struct qib_ibport {TYPE_2__ rvp; int z_vl15_dropped; int z_excessive_buffer_overrun_errors; int z_local_link_integrity_errors; int z_port_rcv_packets; int z_port_xmit_packets; int z_port_rcv_data; int z_port_xmit_data; int z_port_xmit_discards; int z_port_rcv_remphys_errors; int z_port_rcv_errors; int z_link_downed_counter; int z_link_error_recovery_counter; int z_symbol_error_counter; } ;
struct qib_pportdata {TYPE_1__* dd; struct qib_ibport ibport_data; } ;
struct TYPE_3__ {int flags; } ;


 int IB_DEFAULT_GID_PREFIX ;
 int IB_LID_PERMISSIVE ;
 int IB_PMA_PORT_RCV_DATA ;
 int IB_PMA_PORT_RCV_PKTS ;
 int IB_PMA_PORT_XMIT_DATA ;
 int IB_PMA_PORT_XMIT_PKTS ;
 int IB_PMA_PORT_XMIT_WAIT ;
 int IB_PORT_AUTO_MIGR_SUP ;
 int IB_PORT_CAP_MASK_NOTICE_SUP ;
 int IB_PORT_CLIENT_REG_SUP ;
 int IB_PORT_DR_NOTICE_SUP ;
 int IB_PORT_LINK_LATENCY_SUP ;
 int IB_PORT_OTHER_LOCAL_CHANGES_SUP ;
 int IB_PORT_SL_MAP_SUP ;
 int IB_PORT_SYS_IMAGE_GUID_SUP ;
 int IB_PORT_TRAP_SUP ;
 int QIB_HAS_LINK_LATENCY ;
 int RCU_INIT_POINTER (int ,int *) ;
 int be16_to_cpu (int ) ;
 int qib_get_counters (struct qib_pportdata*,struct qib_verbs_counters*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_ibport(struct qib_pportdata *ppd)
{
 struct qib_verbs_counters cntrs;
 struct qib_ibport *ibp = &ppd->ibport_data;

 spin_lock_init(&ibp->rvp.lock);

 ibp->rvp.gid_prefix = IB_DEFAULT_GID_PREFIX;
 ibp->rvp.sm_lid = be16_to_cpu(IB_LID_PERMISSIVE);
 ibp->rvp.port_cap_flags = IB_PORT_SYS_IMAGE_GUID_SUP |
  IB_PORT_CLIENT_REG_SUP | IB_PORT_SL_MAP_SUP |
  IB_PORT_TRAP_SUP | IB_PORT_AUTO_MIGR_SUP |
  IB_PORT_DR_NOTICE_SUP | IB_PORT_CAP_MASK_NOTICE_SUP |
  IB_PORT_OTHER_LOCAL_CHANGES_SUP;
 if (ppd->dd->flags & QIB_HAS_LINK_LATENCY)
  ibp->rvp.port_cap_flags |= IB_PORT_LINK_LATENCY_SUP;
 ibp->rvp.pma_counter_select[0] = IB_PMA_PORT_XMIT_DATA;
 ibp->rvp.pma_counter_select[1] = IB_PMA_PORT_RCV_DATA;
 ibp->rvp.pma_counter_select[2] = IB_PMA_PORT_XMIT_PKTS;
 ibp->rvp.pma_counter_select[3] = IB_PMA_PORT_RCV_PKTS;
 ibp->rvp.pma_counter_select[4] = IB_PMA_PORT_XMIT_WAIT;


 qib_get_counters(ppd, &cntrs);
 ibp->z_symbol_error_counter = cntrs.symbol_error_counter;
 ibp->z_link_error_recovery_counter =
  cntrs.link_error_recovery_counter;
 ibp->z_link_downed_counter = cntrs.link_downed_counter;
 ibp->z_port_rcv_errors = cntrs.port_rcv_errors;
 ibp->z_port_rcv_remphys_errors = cntrs.port_rcv_remphys_errors;
 ibp->z_port_xmit_discards = cntrs.port_xmit_discards;
 ibp->z_port_xmit_data = cntrs.port_xmit_data;
 ibp->z_port_rcv_data = cntrs.port_rcv_data;
 ibp->z_port_xmit_packets = cntrs.port_xmit_packets;
 ibp->z_port_rcv_packets = cntrs.port_rcv_packets;
 ibp->z_local_link_integrity_errors =
  cntrs.local_link_integrity_errors;
 ibp->z_excessive_buffer_overrun_errors =
  cntrs.excessive_buffer_overrun_errors;
 ibp->z_vl15_dropped = cntrs.vl15_dropped;
 RCU_INIT_POINTER(ibp->rvp.qp[0], ((void*)0));
 RCU_INIT_POINTER(ibp->rvp.qp[1], ((void*)0));
}
