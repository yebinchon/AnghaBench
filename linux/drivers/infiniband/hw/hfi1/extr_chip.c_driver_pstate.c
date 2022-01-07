
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_pportdata {int host_link_state; int dd; } ;
 int IB_PORTPHYSSTATE_DISABLED ;
 int IB_PORTPHYSSTATE_LINKUP ;
 int IB_PORTPHYSSTATE_POLLING ;
 int IB_PORTPHYSSTATE_TRAINING ;
 int OPA_PORTPHYSSTATE_OFFLINE ;
 int dd_dev_err (int ,char*,int) ;

u32 driver_pstate(struct hfi1_pportdata *ppd)
{
 switch (ppd->host_link_state) {
 case 129:
 case 130:
 case 131:
  return IB_PORTPHYSSTATE_LINKUP;
 case 135:
  return IB_PORTPHYSSTATE_POLLING;
 case 138:
  return IB_PORTPHYSSTATE_DISABLED;
 case 136:
  return OPA_PORTPHYSSTATE_OFFLINE;
 case 128:
  return IB_PORTPHYSSTATE_TRAINING;
 case 133:
  return IB_PORTPHYSSTATE_TRAINING;
 case 134:
  return OPA_PORTPHYSSTATE_OFFLINE;
 case 132:
  return OPA_PORTPHYSSTATE_OFFLINE;
 case 137:
 default:
  dd_dev_err(ppd->dd, "invalid host_link_state 0x%x\n",
      ppd->host_link_state);
  return -1;
 }
}
