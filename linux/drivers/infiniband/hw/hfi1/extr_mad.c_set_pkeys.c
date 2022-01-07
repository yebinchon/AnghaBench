
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct hfi1_pportdata {scalar_t__* pkeys; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int HFI1_IB_CFG_PKEYS ;
 scalar_t__ LIM_MGMT_P_KEY ;
 int hfi1_event_pkey_change (struct hfi1_devdata*,int) ;
 int hfi1_set_ib_cfg (struct hfi1_pportdata*,int ,int ) ;

__attribute__((used)) static int set_pkeys(struct hfi1_devdata *dd, u8 port, u16 *pkeys)
{
 struct hfi1_pportdata *ppd;
 int i;
 int changed = 0;
 int update_includes_mgmt_partition = 0;







 ppd = dd->pport + (port - 1);



 for (i = 0; i < ARRAY_SIZE(ppd->pkeys); i++) {
  if (pkeys[i] == LIM_MGMT_P_KEY) {
   update_includes_mgmt_partition = 1;
   break;
  }
 }

 if (!update_includes_mgmt_partition)
  return 1;

 for (i = 0; i < ARRAY_SIZE(ppd->pkeys); i++) {
  u16 key = pkeys[i];
  u16 okey = ppd->pkeys[i];

  if (key == okey)
   continue;





  ppd->pkeys[i] = key;
  changed = 1;
 }

 if (changed) {
  (void)hfi1_set_ib_cfg(ppd, HFI1_IB_CFG_PKEYS, 0);
  hfi1_event_pkey_change(dd, port);
 }

 return 0;
}
