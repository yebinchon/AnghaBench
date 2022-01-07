
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ reset_needed; scalar_t__ limiting_active; } ;
struct hfi1_pportdata {int host_link_state; scalar_t__ offline_disabled_reason; scalar_t__ port_type; scalar_t__ current_egress_rate; scalar_t__ link_width_downgrade_rx_active; scalar_t__ link_width_downgrade_tx_active; scalar_t__ link_width_active; TYPE_1__ qsfp_info; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int DC_LCB_ERR_EN ;
 int EINVAL ;
 int HCMD_SUCCESS ;
 scalar_t__ HFI1_ODR_MASK (int ) ;
 void* HLS_DN_OFFLINE ;
 int HLS_DN_POLL ;
 int HLS_GOING_OFFLINE ;
 int HLS_GOING_UP ;
 int HLS_LINK_COOLDOWN ;
 int HLS_UP ;
 int HLS_VERIFY_CAP ;
 int IB_PORT_DOWN ;
 int OPA_LINKDOWN_REASON_NONE ;
 int OPA_LINKDOWN_REASON_TRANSIENT ;
 int PLS_OFFLINE ;
 int PLS_OFFLINE_QUIET ;
 scalar_t__ PORT_TYPE_QSFP ;
 int QSFP_WAIT ;
 int acquire_chip_resource (struct hfi1_devdata*,int ,int ) ;
 int check_lni_states (struct hfi1_pportdata*) ;
 int dd_dev_err (struct hfi1_devdata*,char*,...) ;
 int force_logical_link_state_down (struct hfi1_pportdata*) ;
 int handle_linkup_change (struct hfi1_devdata*,int ) ;
 scalar_t__ qsfp_mod_present (struct hfi1_pportdata*) ;
 int qsfp_resource (struct hfi1_devdata*) ;
 int release_chip_resource (struct hfi1_devdata*,int ) ;
 int set_host_lcb_access (struct hfi1_devdata*) ;
 int set_physical_link_state (struct hfi1_devdata*,int) ;
 int set_qsfp_tx (struct hfi1_pportdata*,int ) ;
 int update_lcb_cache (struct hfi1_devdata*) ;
 int update_statusp (struct hfi1_pportdata*,int ) ;
 int wait_fm_ready (struct hfi1_devdata*,int) ;
 int wait_logical_linkstate (struct hfi1_pportdata*,int ,int) ;
 int wait_phys_link_offline_substates (struct hfi1_pportdata*,int) ;
 int wait_physical_linkstate (struct hfi1_pportdata*,int,int) ;
 int write_csr (struct hfi1_devdata*,int ,unsigned long long) ;

__attribute__((used)) static int goto_offline(struct hfi1_pportdata *ppd, u8 rem_reason)
{
 struct hfi1_devdata *dd = ppd->dd;
 u32 previous_state;
 int offline_state_ret;
 int ret;

 update_lcb_cache(dd);

 previous_state = ppd->host_link_state;
 ppd->host_link_state = HLS_GOING_OFFLINE;


 ret = set_physical_link_state(dd, (rem_reason << 8) | PLS_OFFLINE);

 if (ret != HCMD_SUCCESS) {
  dd_dev_err(dd,
      "Failed to transition to Offline link state, return %d\n",
      ret);
  return -EINVAL;
 }
 if (ppd->offline_disabled_reason ==
   HFI1_ODR_MASK(OPA_LINKDOWN_REASON_NONE))
  ppd->offline_disabled_reason =
  HFI1_ODR_MASK(OPA_LINKDOWN_REASON_TRANSIENT);

 offline_state_ret = wait_phys_link_offline_substates(ppd, 10000);
 if (offline_state_ret < 0)
  return offline_state_ret;


 if (ppd->port_type == PORT_TYPE_QSFP &&
     ppd->qsfp_info.limiting_active &&
     qsfp_mod_present(ppd)) {
  int ret;

  ret = acquire_chip_resource(dd, qsfp_resource(dd), QSFP_WAIT);
  if (ret == 0) {
   set_qsfp_tx(ppd, 0);
   release_chip_resource(dd, qsfp_resource(dd));
  } else {

   dd_dev_err(dd,
       "Unable to acquire lock to turn off QSFP TX\n");
  }
 }





 if (offline_state_ret != PLS_OFFLINE_QUIET) {
  ret = wait_physical_linkstate(ppd, PLS_OFFLINE, 30000);
  if (ret < 0)
   return ret;
 }





 set_host_lcb_access(dd);
 write_csr(dd, DC_LCB_ERR_EN, ~0ull);


 ret = wait_logical_linkstate(ppd, IB_PORT_DOWN, 1000);
 if (ret)
  force_logical_link_state_down(ppd);

 ppd->host_link_state = HLS_LINK_COOLDOWN;
 update_statusp(ppd, IB_PORT_DOWN);
 ret = wait_fm_ready(dd, 7000);
 if (ret) {
  dd_dev_err(dd,
      "After going offline, timed out waiting for the 8051 to become ready to accept host requests\n");

  ppd->host_link_state = HLS_DN_OFFLINE;
  return ret;
 }







 ppd->host_link_state = HLS_DN_OFFLINE;
 if (previous_state & HLS_UP) {

  handle_linkup_change(dd, 0);
 } else if (previous_state
   & (HLS_DN_POLL | HLS_VERIFY_CAP | HLS_GOING_UP)) {

  check_lni_states(ppd);


  ppd->qsfp_info.reset_needed = 0;
 }


 ppd->link_width_active = 0;
 ppd->link_width_downgrade_tx_active = 0;
 ppd->link_width_downgrade_rx_active = 0;
 ppd->current_egress_rate = 0;
 return 0;
}
