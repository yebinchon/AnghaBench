
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
struct hfi1_devdata {scalar_t__ icode; int sw_cce_err_status_aggregate; int * cce_err_status_cnt; int pport; } ;
typedef int buf ;


 unsigned long long CCE_ERR_STATUS_CCE_CLI2_ASYNC_FIFO_PARITY_ERR_SMASK ;
 int FREEZE_SELF ;
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ;
 int NUM_CCE_ERR_STATUS_COUNTERS ;
 int cce_err_status_string (char*,int,unsigned long long) ;
 int dd_dev_info (struct hfi1_devdata*,char*,int ) ;
 int incr_cntr64 (int *) ;
 scalar_t__ is_ax (struct hfi1_devdata*) ;
 int start_freeze_handling (int ,int ) ;

__attribute__((used)) static void handle_cce_err(struct hfi1_devdata *dd, u32 unused, u64 reg)
{
 char buf[96];
 int i = 0;





 dd_dev_info(dd, "CCE Error: %s\n",
      cce_err_status_string(buf, sizeof(buf), reg));

 if ((reg & CCE_ERR_STATUS_CCE_CLI2_ASYNC_FIFO_PARITY_ERR_SMASK) &&
     is_ax(dd) && (dd->icode != ICODE_FUNCTIONAL_SIMULATOR)) {


  start_freeze_handling(dd->pport, FREEZE_SELF);
 }

 for (i = 0; i < NUM_CCE_ERR_STATUS_COUNTERS; i++) {
  if (reg & (1ull << i)) {
   incr_cntr64(&dd->cce_err_status_cnt[i]);

   incr_cntr64(&dd->sw_cce_err_status_aggregate);
  }
 }
}
