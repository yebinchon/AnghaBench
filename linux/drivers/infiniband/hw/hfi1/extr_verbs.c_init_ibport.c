
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port_cap_flags; int * qp; int * pma_counter_select; int port_cap3_flags; scalar_t__ sm_lid; int gid_prefix; int lock; int trap_timer; TYPE_1__* trap_lists; } ;
struct hfi1_ibport {int* sl_to_sc; int* sc_to_sl; TYPE_2__ rvp; } ;
struct hfi1_pportdata {struct hfi1_ibport ibport_data; } ;
struct TYPE_3__ {int list; } ;


 size_t ARRAY_SIZE (int*) ;
 int IB_DEFAULT_GID_PREFIX ;
 int IB_PMA_PORT_RCV_DATA ;
 int IB_PMA_PORT_RCV_PKTS ;
 int IB_PMA_PORT_XMIT_DATA ;
 int IB_PMA_PORT_XMIT_PKTS ;
 int IB_PMA_PORT_XMIT_WAIT ;
 int IB_PORT_AUTO_MIGR_SUP ;
 int IB_PORT_CAP_MASK_NOTICE_SUP ;
 int INIT_LIST_HEAD (int *) ;
 int OPA_CAP_MASK3_IsSharedSpaceSupported ;
 int RCU_INIT_POINTER (int ,int *) ;
 int RVT_MAX_TRAP_LISTS ;
 int hfi1_handle_trap_timer ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void init_ibport(struct hfi1_pportdata *ppd)
{
 struct hfi1_ibport *ibp = &ppd->ibport_data;
 size_t sz = ARRAY_SIZE(ibp->sl_to_sc);
 int i;

 for (i = 0; i < sz; i++) {
  ibp->sl_to_sc[i] = i;
  ibp->sc_to_sl[i] = i;
 }

 for (i = 0; i < RVT_MAX_TRAP_LISTS ; i++)
  INIT_LIST_HEAD(&ibp->rvp.trap_lists[i].list);
 timer_setup(&ibp->rvp.trap_timer, hfi1_handle_trap_timer, 0);

 spin_lock_init(&ibp->rvp.lock);

 ibp->rvp.gid_prefix = IB_DEFAULT_GID_PREFIX;
 ibp->rvp.sm_lid = 0;




 ibp->rvp.port_cap_flags = IB_PORT_AUTO_MIGR_SUP |
  IB_PORT_CAP_MASK_NOTICE_SUP;
 ibp->rvp.port_cap3_flags = OPA_CAP_MASK3_IsSharedSpaceSupported;
 ibp->rvp.pma_counter_select[0] = IB_PMA_PORT_XMIT_DATA;
 ibp->rvp.pma_counter_select[1] = IB_PMA_PORT_RCV_DATA;
 ibp->rvp.pma_counter_select[2] = IB_PMA_PORT_XMIT_PKTS;
 ibp->rvp.pma_counter_select[3] = IB_PMA_PORT_RCV_PKTS;
 ibp->rvp.pma_counter_select[4] = IB_PMA_PORT_XMIT_WAIT;

 RCU_INIT_POINTER(ibp->rvp.qp[0], ((void*)0));
 RCU_INIT_POINTER(ibp->rvp.qp[1], ((void*)0));
}
