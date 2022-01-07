
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int * completion; int * orh; } ;
struct nitrox_softreq {TYPE_1__ resp; } ;


 int PENDING_SIG ;
 int READ_ONCE (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int pr_err (char*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static bool sr_completed(struct nitrox_softreq *sr)
{
 u64 orh = READ_ONCE(*sr->resp.orh);
 unsigned long timeout = jiffies + msecs_to_jiffies(1);

 if ((orh != PENDING_SIG) && (orh & 0xff))
  return 1;

 while (READ_ONCE(*sr->resp.completion) == PENDING_SIG) {
  if (time_after(jiffies, timeout)) {
   pr_err("comp not done\n");
   return 0;
  }
 }

 return 1;
}
