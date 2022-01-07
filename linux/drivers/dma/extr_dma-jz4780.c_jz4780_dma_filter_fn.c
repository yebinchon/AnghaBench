
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_dma_filter_data {int channel; int transfer_type; } ;
struct jz4780_dma_dev {int chan_reserved; } ;
struct jz4780_dma_chan {int id; int transfer_type; } ;
struct dma_chan {int dummy; } ;


 int BIT (int) ;
 struct jz4780_dma_dev* jz4780_dma_chan_parent (struct jz4780_dma_chan*) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (struct dma_chan*) ;

__attribute__((used)) static bool jz4780_dma_filter_fn(struct dma_chan *chan, void *param)
{
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(chan);
 struct jz4780_dma_dev *jzdma = jz4780_dma_chan_parent(jzchan);
 struct jz4780_dma_filter_data *data = param;


 if (data->channel > -1) {
  if (data->channel != jzchan->id)
   return 0;
 } else if (jzdma->chan_reserved & BIT(jzchan->id)) {
  return 0;
 }

 jzchan->transfer_type = data->transfer_type;

 return 1;
}
