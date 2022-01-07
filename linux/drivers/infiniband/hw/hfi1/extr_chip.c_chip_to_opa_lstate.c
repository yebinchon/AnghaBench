
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int IB_PORT_ACTIVE ;
 int IB_PORT_ARMED ;
 int IB_PORT_DOWN ;
 int IB_PORT_INIT ;




 int dd_dev_err (struct hfi1_devdata*,char*,int) ;

__attribute__((used)) static u32 chip_to_opa_lstate(struct hfi1_devdata *dd, u32 chip_lstate)
{
 switch (chip_lstate) {
 default:
  dd_dev_err(dd,
      "Unknown logical state 0x%x, reporting IB_PORT_DOWN\n",
      chip_lstate);

 case 129:
  return IB_PORT_DOWN;
 case 128:
  return IB_PORT_INIT;
 case 130:
  return IB_PORT_ARMED;
 case 131:
  return IB_PORT_ACTIVE;
 }
}
