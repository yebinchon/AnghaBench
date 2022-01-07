
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct opa_smp {int status; } ;
struct TYPE_2__ {int ledenable_offlinereason; int portphysstate_portstate; } ;
struct opa_port_state_info {void* link_width_downgrade_rx_active; void* link_width_downgrade_tx_active; TYPE_1__ port_states; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int is_sm_config_started; int neighbor_normal; int offline_disabled_reason; int link_width_downgrade_rx_active; int link_width_downgrade_tx_active; } ;
struct hfi1_ibport {int dummy; } ;


 int IB_PORT_INIT ;
 int IB_SMP_INVALID_FIELD ;
 int OPA_AM_NPORT (int) ;
 int OPA_AM_START_SM_CFG (int) ;
 void* cpu_to_be16 (int ) ;
 int driver_lstate (struct hfi1_pportdata*) ;
 int driver_pstate (struct hfi1_pportdata*) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (int,int) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int __subn_get_opa_psi(struct opa_smp *smp, u32 am, u8 *data,
         struct ib_device *ibdev, u8 port,
         u32 *resp_len, u32 max_len)
{
 u32 nports = OPA_AM_NPORT(am);
 u32 start_of_sm_config = OPA_AM_START_SM_CFG(am);
 u32 lstate;
 struct hfi1_ibport *ibp;
 struct hfi1_pportdata *ppd;
 struct opa_port_state_info *psi = (struct opa_port_state_info *)data;

 if (nports != 1 || smp_length_check(sizeof(*psi), max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 ibp = to_iport(ibdev, port);
 ppd = ppd_from_ibp(ibp);

 lstate = driver_lstate(ppd);

 if (start_of_sm_config && (lstate == IB_PORT_INIT))
  ppd->is_sm_config_started = 1;

 psi->port_states.ledenable_offlinereason = ppd->neighbor_normal << 4;
 psi->port_states.ledenable_offlinereason |=
  ppd->is_sm_config_started << 5;
 psi->port_states.ledenable_offlinereason |=
  ppd->offline_disabled_reason;

 psi->port_states.portphysstate_portstate =
  (driver_pstate(ppd) << 4) | (lstate & 0xf);
 psi->link_width_downgrade_tx_active =
  cpu_to_be16(ppd->link_width_downgrade_tx_active);
 psi->link_width_downgrade_rx_active =
  cpu_to_be16(ppd->link_width_downgrade_rx_active);
 if (resp_len)
  *resp_len += sizeof(struct opa_port_state_info);

 return reply((struct ib_mad_hdr *)smp);
}
