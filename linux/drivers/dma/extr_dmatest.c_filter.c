
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmatest_params {int dummy; } ;
struct dma_chan {int device; } ;


 int dmatest_match_channel (struct dmatest_params*,struct dma_chan*) ;
 int dmatest_match_device (struct dmatest_params*,int ) ;

__attribute__((used)) static bool filter(struct dma_chan *chan, void *param)
{
 struct dmatest_params *params = param;

 if (!dmatest_match_channel(params, chan) ||
     !dmatest_match_device(params, chan->device))
  return 0;
 else
  return 1;
}
