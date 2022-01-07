
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx6ul_tsc {scalar_t__ tsc_regs; } ;


 int DETECT_MODE ;
 scalar_t__ REG_TSC_DEBUG_MODE2 ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool tsc_wait_detect_mode(struct imx6ul_tsc *tsc)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(2);
 u32 state_machine;
 u32 debug_mode2;

 do {
  if (time_after(jiffies, timeout))
   return 0;

  usleep_range(200, 400);
  debug_mode2 = readl(tsc->tsc_regs + REG_TSC_DEBUG_MODE2);
  state_machine = (debug_mode2 >> 20) & 0x7;
 } while (state_machine != DETECT_MODE);

 usleep_range(200, 400);
 return 1;
}
