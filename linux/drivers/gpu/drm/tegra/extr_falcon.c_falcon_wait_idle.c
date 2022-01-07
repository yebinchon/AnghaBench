
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct falcon {scalar_t__ regs; } ;


 scalar_t__ FALCON_IDLESTATE ;
 int readl_poll_timeout (scalar_t__,scalar_t__,int,int,int) ;

int falcon_wait_idle(struct falcon *falcon)
{
 u32 value;

 return readl_poll_timeout(falcon->regs + FALCON_IDLESTATE, value,
      (value == 0), 10, 100000);
}
