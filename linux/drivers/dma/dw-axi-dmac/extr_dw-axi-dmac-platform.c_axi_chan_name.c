
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct axi_dma_chan {TYPE_1__ vc; } ;


 char const* dma_chan_name (int *) ;

__attribute__((used)) static inline const char *axi_chan_name(struct axi_dma_chan *chan)
{
 return dma_chan_name(&chan->vc.chan);
}
