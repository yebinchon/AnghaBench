
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_pportdata {int dd; } ;


 int dd_dev_err (int ,char*,scalar_t__,scalar_t__) ;
 int log_state_transition (struct hfi1_pportdata*,scalar_t__) ;
 scalar_t__ read_physical_state (int ) ;

__attribute__((used)) static void log_physical_state(struct hfi1_pportdata *ppd, u32 state)
{
 u32 read_state = read_physical_state(ppd->dd);

 if (read_state == state) {
  log_state_transition(ppd, state);
 } else {
  dd_dev_err(ppd->dd,
      "anticipated phy link state 0x%x, read 0x%x\n",
      state, read_state);
 }
}
