
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_pportdata {int dd; } ;


 int ETIMEDOUT ;
 int dd_dev_err (int ,char*,scalar_t__) ;
 unsigned long jiffies ;
 int log_state_transition (struct hfi1_pportdata*,scalar_t__) ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ read_physical_state (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int wait_physical_linkstate(struct hfi1_pportdata *ppd, u32 state,
       int msecs)
{
 u32 read_state;
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(msecs);
 while (1) {
  read_state = read_physical_state(ppd->dd);
  if (read_state == state)
   break;
  if (time_after(jiffies, timeout)) {
   dd_dev_err(ppd->dd,
       "timeout waiting for phy link state 0x%x\n",
       state);
   return -ETIMEDOUT;
  }
  usleep_range(1950, 2050);
 }

 log_state_transition(ppd, state);
 return 0;
}
