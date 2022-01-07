
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmatest_params {char* channel; } ;
struct dma_chan {int dummy; } ;


 int dma_chan_name (struct dma_chan*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool dmatest_match_channel(struct dmatest_params *params,
  struct dma_chan *chan)
{
 if (params->channel[0] == '\0')
  return 1;
 return strcmp(dma_chan_name(chan), params->channel) == 0;
}
