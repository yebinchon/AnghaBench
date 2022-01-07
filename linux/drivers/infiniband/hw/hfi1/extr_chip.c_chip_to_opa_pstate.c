
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int IB_PORTPHYSSTATE_DISABLED ;
 int IB_PORTPHYSSTATE_LINKUP ;
 int IB_PORTPHYSSTATE_PHY_TEST ;
 int IB_PORTPHYSSTATE_POLLING ;
 int IB_PORTPHYSSTATE_TRAINING ;
 int OPA_PORTPHYSSTATE_OFFLINE ;






 int dd_dev_err (struct hfi1_devdata*,char*,int) ;

u32 chip_to_opa_pstate(struct hfi1_devdata *dd, u32 chip_pstate)
{

 switch (chip_pstate & 0xf0) {
 default:
  dd_dev_err(dd, "Unexpected chip physical state of 0x%x\n",
      chip_pstate);

 case 132:
  return IB_PORTPHYSSTATE_DISABLED;
 case 130:
  return OPA_PORTPHYSSTATE_OFFLINE;
 case 128:
  return IB_PORTPHYSSTATE_POLLING;
 case 133:
  return IB_PORTPHYSSTATE_TRAINING;
 case 131:
  return IB_PORTPHYSSTATE_LINKUP;
 case 129:
  return IB_PORTPHYSSTATE_PHY_TEST;
 }
}
