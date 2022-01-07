
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {scalar_t__ regs; } ;
struct sdma_channel {int channel; struct sdma_engine* sdma; } ;


 int EINVAL ;
 unsigned int MXC_SDMA_MAX_PRIORITY ;
 unsigned int MXC_SDMA_MIN_PRIORITY ;
 scalar_t__ SDMA_CHNPRI_0 ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static int sdma_set_channel_priority(struct sdma_channel *sdmac,
  unsigned int priority)
{
 struct sdma_engine *sdma = sdmac->sdma;
 int channel = sdmac->channel;

 if (priority < MXC_SDMA_MIN_PRIORITY
     || priority > MXC_SDMA_MAX_PRIORITY) {
  return -EINVAL;
 }

 writel_relaxed(priority, sdma->regs + SDMA_CHNPRI_0 + 4 * channel);

 return 0;
}
