
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {scalar_t__ icode; } ;


 int ETIMEDOUT ;
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ;
 int get_firmware_state (struct hfi1_devdata*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

int wait_fm_ready(struct hfi1_devdata *dd, u32 mstimeout)
{
 unsigned long timeout;


 if (dd->icode == ICODE_FUNCTIONAL_SIMULATOR)
  return 0;

 timeout = msecs_to_jiffies(mstimeout) + jiffies;
 while (1) {
  if (get_firmware_state(dd) == 0xa0)
   return 0;
  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;
  usleep_range(1950, 2050);
 }
}
