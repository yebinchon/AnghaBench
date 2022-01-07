
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_dma_chn {int dev_id; } ;
struct dma_chan {int dummy; } ;


 struct sprd_dma_chn* to_sprd_dma_chan (struct dma_chan*) ;

__attribute__((used)) static bool sprd_dma_filter_fn(struct dma_chan *chan, void *param)
{
 struct sprd_dma_chn *schan = to_sprd_dma_chan(chan);
 u32 slave_id = *(u32 *)param;

 schan->dev_id = slave_id;
 return 1;
}
