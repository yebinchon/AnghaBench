
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_filter_param {scalar_t__ chan_id; } ;
struct dma_chan {scalar_t__ chan_id; } ;



__attribute__((used)) static bool mmp_tdma_filter_fn(struct dma_chan *chan, void *fn_param)
{
 struct mmp_tdma_filter_param *param = fn_param;

 if (chan->chan_id != param->chan_id)
  return 0;

 return 1;
}
