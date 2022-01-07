
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct hfi1_devdata {int dummy; } ;


 unsigned long long ALL_FROZE ;
 int CCE_STATUS ;
 int FREEZE_STATUS_TIMEOUT ;
 int dd_dev_err (struct hfi1_devdata*,char*,char*,unsigned long long,unsigned long long) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 unsigned long long read_csr (struct hfi1_devdata*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void wait_for_freeze_status(struct hfi1_devdata *dd, int freeze)
{
 unsigned long timeout;
 u64 reg;

 timeout = jiffies + msecs_to_jiffies(FREEZE_STATUS_TIMEOUT);
 while (1) {
  reg = read_csr(dd, CCE_STATUS);
  if (freeze) {

   if ((reg & ALL_FROZE) == ALL_FROZE)
    return;
  } else {

   if ((reg & ALL_FROZE) == 0)
    return;
  }

  if (time_after(jiffies, timeout)) {
   dd_dev_err(dd,
       "Time out waiting for SPC %sfreeze, bits 0x%llx, expecting 0x%llx, continuing",
       freeze ? "" : "un", reg & ALL_FROZE,
       freeze ? ALL_FROZE : 0ull);
   return;
  }
  usleep_range(80, 120);
 }
}
