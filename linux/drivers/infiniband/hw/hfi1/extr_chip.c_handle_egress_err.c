
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {scalar_t__ icode; int * send_egress_err_status_cnt; int pport; } ;
typedef int buf ;


 int ALL_TXE_EGRESS_FREEZE_ERR ;
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ;
 int NUM_SEND_EGRESS_ERR_STATUS_COUNTERS ;
 int SEND_EGRESS_ERR_STATUS_TX_CREDIT_RETURN_VL_ERR_SMASK ;
 int count_port_inactive (struct hfi1_devdata*) ;
 int dd_dev_info (struct hfi1_devdata*,char*,int ) ;
 int disallowed_pkt_engine (int) ;
 scalar_t__ disallowed_pkt_err (int) ;
 int egress_err_status_string (char*,int,int) ;
 int engine_to_vl (struct hfi1_devdata*,int ) ;
 int fls64 (int) ;
 int handle_send_egress_err_info (struct hfi1_devdata*,int) ;
 int incr_cntr64 (int *) ;
 scalar_t__ is_ax (struct hfi1_devdata*) ;
 scalar_t__ port_inactive_err (int) ;
 int start_freeze_handling (int ,int ) ;

__attribute__((used)) static void handle_egress_err(struct hfi1_devdata *dd, u32 unused, u64 reg)
{
 u64 reg_copy = reg, handled = 0;
 char buf[96];
 int i = 0;

 if (reg & ALL_TXE_EGRESS_FREEZE_ERR)
  start_freeze_handling(dd->pport, 0);
 else if (is_ax(dd) &&
   (reg & SEND_EGRESS_ERR_STATUS_TX_CREDIT_RETURN_VL_ERR_SMASK) &&
   (dd->icode != ICODE_FUNCTIONAL_SIMULATOR))
  start_freeze_handling(dd->pport, 0);

 while (reg_copy) {
  int posn = fls64(reg_copy);

  int shift = posn - 1;
  u64 mask = 1ULL << shift;

  if (port_inactive_err(shift)) {
   count_port_inactive(dd);
   handled |= mask;
  } else if (disallowed_pkt_err(shift)) {
   int vl = engine_to_vl(dd, disallowed_pkt_engine(shift));

   handle_send_egress_err_info(dd, vl);
   handled |= mask;
  }
  reg_copy &= ~mask;
 }

 reg &= ~handled;

 if (reg)
  dd_dev_info(dd, "Egress Error: %s\n",
       egress_err_status_string(buf, sizeof(buf), reg));

 for (i = 0; i < NUM_SEND_EGRESS_ERR_STATUS_COUNTERS; i++) {
  if (reg & (1ull << i))
   incr_cntr64(&dd->send_egress_err_status_cnt[i]);
 }
}
