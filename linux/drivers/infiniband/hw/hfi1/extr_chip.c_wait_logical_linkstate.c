
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_pportdata {int dd; } ;


 int ETIMEDOUT ;
 scalar_t__ chip_to_opa_lstate (int ,int ) ;
 int dd_dev_err (int ,char*,scalar_t__) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int read_logical_state (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int wait_logical_linkstate(struct hfi1_pportdata *ppd, u32 state,
      int msecs)
{
 unsigned long timeout;
 u32 new_state;

 timeout = jiffies + msecs_to_jiffies(msecs);
 while (1) {
  new_state = chip_to_opa_lstate(ppd->dd,
            read_logical_state(ppd->dd));
  if (new_state == state)
   break;
  if (time_after(jiffies, timeout)) {
   dd_dev_err(ppd->dd,
       "timeout waiting for link state 0x%x\n",
       state);
   return -ETIMEDOUT;
  }
  msleep(20);
 }

 return 0;
}
