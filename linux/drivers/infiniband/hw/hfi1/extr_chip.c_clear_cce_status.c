
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int CCE_CTRL ;
 int CCE_STATUS ;
 int CCE_STATUS_TIMEOUT ;
 int dd_dev_err (struct hfi1_devdata*,char*,int,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void clear_cce_status(struct hfi1_devdata *dd, u64 status_bits,
        u64 ctrl_bits)
{
 unsigned long timeout;
 u64 reg;


 reg = read_csr(dd, CCE_STATUS);
 if ((reg & status_bits) == 0)
  return;


 write_csr(dd, CCE_CTRL, ctrl_bits);


 timeout = jiffies + msecs_to_jiffies(CCE_STATUS_TIMEOUT);
 while (1) {
  reg = read_csr(dd, CCE_STATUS);
  if ((reg & status_bits) == 0)
   return;
  if (time_after(jiffies, timeout)) {
   dd_dev_err(dd,
       "Timeout waiting for CceStatus to clear bits 0x%llx, remaining 0x%llx\n",
       status_bits, reg & status_bits);
   return;
  }
  udelay(1);
 }
}
