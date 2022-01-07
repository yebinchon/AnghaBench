
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int freeze_work; int offline_disabled_reason; int start_link_work; int qsfp_retry_count; scalar_t__ link_enabled; scalar_t__ driver_link_ready; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int HFI1_ODR_MASK (int ) ;
 int HLS_DN_OFFLINE ;
 int MAX_QSFP_RETRIES ;
 int OPA_LINKDOWN_REASON_REBOOT ;
 int RCV_CTRL_RCV_PORT_ENABLE_SMASK ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int clear_rcvctrl (struct hfi1_devdata*,int ) ;
 int flush_delayed_work (int *) ;
 int set_link_down_reason (struct hfi1_pportdata*,int ,int ,int ) ;
 int set_link_state (struct hfi1_pportdata*,int ) ;

void hfi1_quiet_serdes(struct hfi1_pportdata *ppd)
{
 struct hfi1_devdata *dd = ppd->dd;
 ppd->driver_link_ready = 0;
 ppd->link_enabled = 0;

 ppd->qsfp_retry_count = MAX_QSFP_RETRIES;
 flush_delayed_work(&ppd->start_link_work);
 cancel_delayed_work_sync(&ppd->start_link_work);

 ppd->offline_disabled_reason =
   HFI1_ODR_MASK(OPA_LINKDOWN_REASON_REBOOT);
 set_link_down_reason(ppd, OPA_LINKDOWN_REASON_REBOOT, 0,
        OPA_LINKDOWN_REASON_REBOOT);
 set_link_state(ppd, HLS_DN_OFFLINE);


 clear_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
 cancel_work_sync(&ppd->freeze_work);
}
