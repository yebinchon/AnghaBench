
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int EBUSY ;
 int __acquire_chip_resource (struct hfi1_devdata*,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

int acquire_chip_resource(struct hfi1_devdata *dd, u32 resource, u32 mswait)
{
 unsigned long timeout;
 int ret;

 timeout = jiffies + msecs_to_jiffies(mswait);
 while (1) {
  ret = __acquire_chip_resource(dd, resource);
  if (ret != -EBUSY)
   return ret;

  if (time_after_eq(jiffies, timeout))
   return -EBUSY;
  usleep_range(80, 120);
 }
}
