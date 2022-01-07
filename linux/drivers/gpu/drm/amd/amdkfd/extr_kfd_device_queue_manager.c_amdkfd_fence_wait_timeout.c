
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETIME ;
 scalar_t__ halt_if_hws_hang ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 int pr_err (char*) ;
 int schedule () ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int amdkfd_fence_wait_timeout(unsigned int *fence_addr,
    unsigned int fence_value,
    unsigned int timeout_ms)
{
 unsigned long end_jiffies = msecs_to_jiffies(timeout_ms) + jiffies;

 while (*fence_addr != fence_value) {
  if (time_after(jiffies, end_jiffies)) {
   pr_err("qcm fence wait loop timeout expired\n");




   while (halt_if_hws_hang)
    schedule();

   return -ETIME;
  }
  schedule();
 }

 return 0;
}
