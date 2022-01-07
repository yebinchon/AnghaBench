
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int err_progress_check_timer; int this_idx; struct hfi1_devdata* dd; int descq_head; int progress_check_head; } ;
struct hfi1_devdata {unsigned int num_sdma; struct sdma_engine* per_sdma; } ;


 scalar_t__ HFI1_CAP_IS_KSET (int ) ;
 int SDMA_AHG ;
 int dd_dev_err (struct hfi1_devdata*,char*,int ) ;
 int is_bx (struct hfi1_devdata*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void sdma_err_progress_check_schedule(struct sdma_engine *sde)
{
 if (!is_bx(sde->dd) && HFI1_CAP_IS_KSET(SDMA_AHG)) {
  unsigned index;
  struct hfi1_devdata *dd = sde->dd;

  for (index = 0; index < dd->num_sdma; index++) {
   struct sdma_engine *curr_sdma = &dd->per_sdma[index];

   if (curr_sdma != sde)
    curr_sdma->progress_check_head =
       curr_sdma->descq_head;
  }
  dd_dev_err(sde->dd,
      "SDMA engine %d - check scheduled\n",
    sde->this_idx);
  mod_timer(&sde->err_progress_check_timer, jiffies + 10);
 }
}
