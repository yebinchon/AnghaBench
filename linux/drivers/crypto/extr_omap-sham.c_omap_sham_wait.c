
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_sham_dev {int dummy; } ;


 unsigned long DEFAULT_TIMEOUT_INTERVAL ;
 int ETIMEDOUT ;
 unsigned long jiffies ;
 int omap_sham_read (struct omap_sham_dev*,int) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;

__attribute__((used)) static inline int omap_sham_wait(struct omap_sham_dev *dd, u32 offset, u32 bit)
{
 unsigned long timeout = jiffies + DEFAULT_TIMEOUT_INTERVAL;

 while (!(omap_sham_read(dd, offset) & bit)) {
  if (time_is_before_jiffies(timeout))
   return -ETIMEDOUT;
 }

 return 0;
}
