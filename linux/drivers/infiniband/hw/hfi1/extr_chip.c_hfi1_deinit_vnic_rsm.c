
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rmt_start; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;


 int RCV_CTRL_RCV_RSM_ENABLE_SMASK ;
 int RSM_INS_VNIC ;
 int clear_rcvctrl (struct hfi1_devdata*,int ) ;
 int clear_rsm_rule (struct hfi1_devdata*,int ) ;

void hfi1_deinit_vnic_rsm(struct hfi1_devdata *dd)
{
 clear_rsm_rule(dd, RSM_INS_VNIC);


 if (dd->vnic.rmt_start == 0)
  clear_rcvctrl(dd, RCV_CTRL_RCV_RSM_ENABLE_SMASK);
}
