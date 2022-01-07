
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {scalar_t__* pkeys; int port; int dd; } ;


 int HFI1_IB_CFG_PKEYS ;
 int hfi1_event_pkey_change (int ,int ) ;
 int hfi1_set_ib_cfg (struct hfi1_pportdata*,int ,int ) ;

__attribute__((used)) static void clear_full_mgmt_pkey(struct hfi1_pportdata *ppd)
{
 if (ppd->pkeys[2] != 0) {
  ppd->pkeys[2] = 0;
  (void)hfi1_set_ib_cfg(ppd, HFI1_IB_CFG_PKEYS, 0);
  hfi1_event_pkey_change(ppd->dd, ppd->port);
 }
}
