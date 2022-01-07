
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {int * send_dma_err_status_cnt; int pport; } ;
typedef int buf ;


 int ALL_SDMA_FREEZE_ERR ;
 int NUM_SEND_DMA_ERR_STATUS_COUNTERS ;
 int dd_dev_info (struct hfi1_devdata*,char*,int ) ;
 int incr_cntr64 (int *) ;
 int sdma_err_status_string (char*,int,int) ;
 int start_freeze_handling (int ,int ) ;

__attribute__((used)) static void handle_sdma_err(struct hfi1_devdata *dd, u32 unused, u64 reg)
{
 char buf[96];
 int i = 0;

 dd_dev_info(dd, "SDMA Error: %s\n",
      sdma_err_status_string(buf, sizeof(buf), reg));

 if (reg & ALL_SDMA_FREEZE_ERR)
  start_freeze_handling(dd->pport, 0);

 for (i = 0; i < NUM_SEND_DMA_ERR_STATUS_COUNTERS; i++) {
  if (reg & (1ull << i))
   incr_cntr64(&dd->send_dma_err_status_cnt[i]);
 }
}
