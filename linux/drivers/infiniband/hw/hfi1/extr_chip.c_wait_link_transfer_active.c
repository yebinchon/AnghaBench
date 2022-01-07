
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hfi1_devdata {int dummy; } ;


 int DC_LCB_STS_LINK_TRANSFER_ACTIVE ;
 int ETIMEDOUT ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ read_csr (struct hfi1_devdata*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int wait_link_transfer_active(struct hfi1_devdata *dd, int wait_ms)
{
 u64 reg;
 unsigned long timeout;


 timeout = jiffies + msecs_to_jiffies(wait_ms);
 while (1) {
  reg = read_csr(dd, DC_LCB_STS_LINK_TRANSFER_ACTIVE);
  if (reg)
   break;
  if (time_after(jiffies, timeout)) {
   dd_dev_err(dd,
       "timeout waiting for LINK_TRANSFER_ACTIVE\n");
   return -ETIMEDOUT;
  }
  udelay(2);
 }
 return 0;
}
