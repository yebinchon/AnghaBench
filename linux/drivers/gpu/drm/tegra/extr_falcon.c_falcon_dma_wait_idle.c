
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct falcon {scalar_t__ regs; } ;


 scalar_t__ FALCON_DMATRFCMD ;
 int FALCON_DMATRFCMD_IDLE ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int falcon_dma_wait_idle(struct falcon *falcon)
{
 u32 value;

 return readl_poll_timeout(falcon->regs + FALCON_DMATRFCMD, value,
      (value & FALCON_DMATRFCMD_IDLE), 10, 100000);
}
