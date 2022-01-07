
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int SEND_CM_CREDIT_USED_STATUS ;
 int VL_STATUS_CLEAR_TIMEOUT ;
 int dd_dev_err (struct hfi1_devdata*,char*,...) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void wait_for_vl_status_clear(struct hfi1_devdata *dd, u64 mask,
         const char *which)
{
 unsigned long timeout;
 u64 reg;

 timeout = jiffies + msecs_to_jiffies(VL_STATUS_CLEAR_TIMEOUT);
 while (1) {
  reg = read_csr(dd, SEND_CM_CREDIT_USED_STATUS) & mask;

  if (reg == 0)
   return;
  if (time_after(jiffies, timeout))
   break;
  udelay(1);
 }

 dd_dev_err(dd,
     "%s credit change status not clearing after %dms, mask 0x%llx, not clear 0x%llx\n",
     which, VL_STATUS_CLEAR_TIMEOUT, mask, reg);




 dd_dev_err(dd,
     "Continuing anyway.  A credit loss may occur.  Suggest a link bounce\n");
}
