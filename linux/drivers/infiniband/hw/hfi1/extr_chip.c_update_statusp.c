
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_pportdata {int* statusp; int dd; } ;


 int HFI1_STATUS_IB_CONF ;
 int HFI1_STATUS_IB_READY ;




 int dd_dev_info (int ,char*,int ,int) ;
 int opa_lstate_name (int) ;

__attribute__((used)) static void update_statusp(struct hfi1_pportdata *ppd, u32 state)
{
 if (ppd->statusp) {
  switch (state) {
  case 129:
  case 128:
   *ppd->statusp &= ~(HFI1_STATUS_IB_CONF |
        HFI1_STATUS_IB_READY);
   break;
  case 130:
   *ppd->statusp |= HFI1_STATUS_IB_CONF;
   break;
  case 131:
   *ppd->statusp |= HFI1_STATUS_IB_READY;
   break;
  }
 }
 dd_dev_info(ppd->dd, "logical state changed to %s (0x%x)\n",
      opa_lstate_name(state), state);
}
