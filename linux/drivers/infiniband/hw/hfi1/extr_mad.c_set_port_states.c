
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct opa_smp {int status; } ;
struct hfi1_pportdata {int neighbor_normal; int offline_disabled_reason; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int HFI1_ODR_MASK (int ) ;
 int HFI_TRANSITION_DISALLOWED ;
 int HFI_TRANSITION_IGNORED ;
 int HFI_TRANSITION_UNDEFINED ;
 scalar_t__ HLS_DN_DISABLE ;
 scalar_t__ HLS_DN_DOWNDEF ;
 scalar_t__ HLS_DN_OFFLINE ;
 scalar_t__ HLS_DN_POLL ;
 scalar_t__ HLS_UP_ACTIVE ;
 scalar_t__ HLS_UP_ARMED ;
 int IB_MAD_RESULT_CONSUMED ;
 int IB_MAD_RESULT_SUCCESS ;
 scalar_t__ IB_PORTPHYSSTATE_DISABLED ;
 scalar_t__ IB_PORTPHYSSTATE_NOP ;
 scalar_t__ IB_PORTPHYSSTATE_POLLING ;




 int IB_SMP_INVALID_FIELD ;
 int OPA_LINKDOWN_REASON_FM_BOUNCE ;
 int OPA_LINKDOWN_REASON_NONE ;
 int OPA_LINKDOWN_REASON_SMA_DISABLED ;
 int SMA_IDLE_ACTIVE ;
 int SMA_IDLE_ARM ;
 int port_states_transition_allowed (struct hfi1_pportdata*,scalar_t__,scalar_t__) ;
 int pr_warn (char*,...) ;
 int send_idle_sma (struct hfi1_devdata*,int ) ;
 int set_link_down_reason (struct hfi1_pportdata*,int ,int ,int ) ;
 int set_link_state (struct hfi1_pportdata*,scalar_t__) ;
 int start_link (struct hfi1_pportdata*) ;

__attribute__((used)) static int set_port_states(struct hfi1_pportdata *ppd, struct opa_smp *smp,
      u32 logical_state, u32 phys_state, int local_mad)
{
 struct hfi1_devdata *dd = ppd->dd;
 u32 link_state;
 int ret;

 ret = port_states_transition_allowed(ppd, logical_state, phys_state);
 if (ret == HFI_TRANSITION_DISALLOWED ||
     ret == HFI_TRANSITION_UNDEFINED) {

  smp->status |= IB_SMP_INVALID_FIELD;
  return 0;
 }

 if (ret == HFI_TRANSITION_IGNORED)
  return 0;

 if ((phys_state != IB_PORTPHYSSTATE_NOP) &&
     !(logical_state == 129 ||
       logical_state == 128)){
  pr_warn("SubnSet(OPA_PortInfo) port state invalid: logical_state 0x%x physical_state 0x%x\n",
   logical_state, phys_state);
  smp->status |= IB_SMP_INVALID_FIELD;
 }






 switch (logical_state) {
 case 128:
  if (phys_state == IB_PORTPHYSSTATE_NOP)
   break;

 case 129:
  if (phys_state == IB_PORTPHYSSTATE_NOP) {
   link_state = HLS_DN_DOWNDEF;
  } else if (phys_state == IB_PORTPHYSSTATE_POLLING) {
   link_state = HLS_DN_POLL;
   set_link_down_reason(ppd, OPA_LINKDOWN_REASON_FM_BOUNCE,
          0, OPA_LINKDOWN_REASON_FM_BOUNCE);
  } else if (phys_state == IB_PORTPHYSSTATE_DISABLED) {
   link_state = HLS_DN_DISABLE;
  } else {
   pr_warn("SubnSet(OPA_PortInfo) invalid physical state 0x%x\n",
    phys_state);
   smp->status |= IB_SMP_INVALID_FIELD;
   break;
  }

  if ((link_state == HLS_DN_POLL ||
       link_state == HLS_DN_DOWNDEF)) {







   set_link_state(ppd, HLS_DN_OFFLINE);
   start_link(ppd);
  } else {
   set_link_state(ppd, link_state);
  }
  if (link_state == HLS_DN_DISABLE &&
      (ppd->offline_disabled_reason >
       HFI1_ODR_MASK(OPA_LINKDOWN_REASON_SMA_DISABLED) ||
       ppd->offline_disabled_reason ==
       HFI1_ODR_MASK(OPA_LINKDOWN_REASON_NONE)))
   ppd->offline_disabled_reason =
   HFI1_ODR_MASK(OPA_LINKDOWN_REASON_SMA_DISABLED);




  if (link_state == HLS_DN_DISABLE && !local_mad)
   return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
  break;
 case 130:
  ret = set_link_state(ppd, HLS_UP_ARMED);
  if (!ret)
   send_idle_sma(dd, SMA_IDLE_ARM);
  break;
 case 131:
  if (ppd->neighbor_normal) {
   ret = set_link_state(ppd, HLS_UP_ACTIVE);
   if (ret == 0)
    send_idle_sma(dd, SMA_IDLE_ACTIVE);
  } else {
   pr_warn("SubnSet(OPA_PortInfo) Cannot move to Active with NeighborNormal 0\n");
   smp->status |= IB_SMP_INVALID_FIELD;
  }
  break;
 default:
  pr_warn("SubnSet(OPA_PortInfo) invalid logical state 0x%x\n",
   logical_state);
  smp->status |= IB_SMP_INVALID_FIELD;
 }

 return 0;
}
