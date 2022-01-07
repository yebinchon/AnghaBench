
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_pportdata {int host_link_state; int dd; } ;


 int HLS_DOWN ;
 int HLS_UP ;



 int IB_PORT_ACTIVE ;
 int IB_PORT_ARMED ;
 int IB_PORT_DOWN ;
 int IB_PORT_INIT ;
 int dd_dev_err (int ,char*,int) ;

u32 driver_lstate(struct hfi1_pportdata *ppd)
{
 if (ppd->host_link_state && (ppd->host_link_state & HLS_DOWN))
  return IB_PORT_DOWN;

 switch (ppd->host_link_state & HLS_UP) {
 case 128:
  return IB_PORT_INIT;
 case 129:
  return IB_PORT_ARMED;
 case 130:
  return IB_PORT_ACTIVE;
 default:
  dd_dev_err(ppd->dd, "invalid host_link_state 0x%x\n",
      ppd->host_link_state);
 return -1;
 }
}
