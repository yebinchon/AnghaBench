
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
struct TYPE_4__ {int status_and_code; } ;
struct hfi1_devdata {TYPE_1__ err_info_xmit_constraint; scalar_t__ rcv_ovfl_cnt; TYPE_2__ err_info_rcvport; } ;


 int CNTR_INVALID_VL ;
 int C_DC_RCV_ERR ;
 int C_DC_REINIT_FROM_PEER_CNT ;
 int C_DC_RX_REPLAY ;
 int C_DC_SEQ_CRC_CNT ;
 int C_RCV_OVF ;
 int OPA_EI_STATUS_SMASK ;
 int write_dev_cntr (struct hfi1_devdata*,int ,int ,int ) ;

void clear_linkup_counters(struct hfi1_devdata *dd)
{

 write_dev_cntr(dd, C_DC_RCV_ERR, CNTR_INVALID_VL, 0);
 dd->err_info_rcvport.status_and_code &= ~OPA_EI_STATUS_SMASK;

 write_dev_cntr(dd, C_DC_SEQ_CRC_CNT, CNTR_INVALID_VL, 0);
 write_dev_cntr(dd, C_DC_REINIT_FROM_PEER_CNT, CNTR_INVALID_VL, 0);

 write_dev_cntr(dd, C_DC_RX_REPLAY, CNTR_INVALID_VL, 0);

 write_dev_cntr(dd, C_RCV_OVF, CNTR_INVALID_VL, 0);
 dd->rcv_ovfl_cnt = 0;
 dd->err_info_xmit_constraint.status &= ~OPA_EI_STATUS_SMASK;
}
