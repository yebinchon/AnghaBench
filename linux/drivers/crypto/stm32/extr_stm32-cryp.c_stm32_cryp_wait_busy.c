
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_cryp {scalar_t__ regs; } ;


 scalar_t__ CRYP_SR ;
 int SR_BUSY ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static inline int stm32_cryp_wait_busy(struct stm32_cryp *cryp)
{
 u32 status;

 return readl_relaxed_poll_timeout(cryp->regs + CRYP_SR, status,
   !(status & SR_BUSY), 10, 100000);
}
