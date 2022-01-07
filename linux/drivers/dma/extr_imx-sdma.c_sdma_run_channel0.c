
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdma_engine {scalar_t__ regs; int dev; } ;


 scalar_t__ SDMA_H_CONFIG ;
 int SDMA_H_CONFIG_CSM ;
 scalar_t__ SDMA_H_STATSTOP ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int readl_relaxed_poll_timeout_atomic (scalar_t__,int,int,int,int) ;
 int sdma_enable_channel (struct sdma_engine*,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int sdma_run_channel0(struct sdma_engine *sdma)
{
 int ret;
 u32 reg;

 sdma_enable_channel(sdma, 0);

 ret = readl_relaxed_poll_timeout_atomic(sdma->regs + SDMA_H_STATSTOP,
      reg, !(reg & 1), 1, 500);
 if (ret)
  dev_err(sdma->dev, "Timeout waiting for CH0 ready\n");


 reg = readl(sdma->regs + SDMA_H_CONFIG);
 if ((reg & SDMA_H_CONFIG_CSM) == 0) {
  reg |= SDMA_H_CONFIG_CSM;
  writel_relaxed(reg, sdma->regs + SDMA_H_CONFIG);
 }

 return ret;
}
