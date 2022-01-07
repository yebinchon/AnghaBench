
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct axi_dma_chan {TYPE_3__* chip; } ;
typedef size_t dma_addr_t ;
struct TYPE_6__ {TYPE_2__* dw; } ;
struct TYPE_5__ {TYPE_1__* hdata; } ;
struct TYPE_4__ {int m_data_width; } ;


 size_t BIT (int ) ;
 int __ffs (size_t) ;

__attribute__((used)) static u32 axi_chan_get_xfer_width(struct axi_dma_chan *chan, dma_addr_t src,
       dma_addr_t dst, size_t len)
{
 u32 max_width = chan->chip->dw->hdata->m_data_width;

 return __ffs(src | dst | len | BIT(max_width));
}
