
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {scalar_t__ link_enabled; scalar_t__ driver_link_ready; } ;
struct hfi1_devdata {int flags; struct hfi1_pportdata* pport; } ;


 int FREEZE_ABORT ;
 int FREEZE_SELF ;
 int HFI1_FORCED_FREEZE ;
 int OPA_LINKDOWN_REASON_SMA_DISABLED ;
 int PLS_OFFLINE ;
 int dc_shutdown (struct hfi1_devdata*) ;
 int dd_dev_emerg (struct hfi1_devdata*,char*) ;
 int set_physical_link_state (struct hfi1_devdata*,int) ;
 int start_freeze_handling (struct hfi1_pportdata*,int) ;

__attribute__((used)) static void handle_temp_err(struct hfi1_devdata *dd)
{
 struct hfi1_pportdata *ppd = &dd->pport[0];





 dd_dev_emerg(dd,
       "Critical temperature reached! Forcing device into freeze mode!\n");
 dd->flags |= HFI1_FORCED_FREEZE;
 start_freeze_handling(ppd, FREEZE_SELF | FREEZE_ABORT);
 ppd->driver_link_ready = 0;
 ppd->link_enabled = 0;
 set_physical_link_state(dd, (OPA_LINKDOWN_REASON_SMA_DISABLED << 8) |
    PLS_OFFLINE);




 dc_shutdown(dd);
}
