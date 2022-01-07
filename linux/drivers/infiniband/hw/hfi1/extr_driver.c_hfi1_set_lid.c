
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_pportdata {int port; int lmc; int lid; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int HFI1_IB_CFG_LIDLMC ;
 int dd_dev_info (struct hfi1_devdata*,char*,int ,int ) ;
 int hfi1_set_ib_cfg (struct hfi1_pportdata*,int ,int ) ;

int hfi1_set_lid(struct hfi1_pportdata *ppd, u32 lid, u8 lmc)
{
 struct hfi1_devdata *dd = ppd->dd;

 ppd->lid = lid;
 ppd->lmc = lmc;
 hfi1_set_ib_cfg(ppd, HFI1_IB_CFG_LIDLMC, 0);

 dd_dev_info(dd, "port %u: got a lid: 0x%x\n", ppd->port, lid);

 return 0;
}
