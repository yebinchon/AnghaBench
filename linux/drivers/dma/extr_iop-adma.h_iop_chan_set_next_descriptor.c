
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int id; } ;


 int AAU_ANDAR (struct iop_adma_chan*) ;



 int DMA_NDAR (struct iop_adma_chan*) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static inline void iop_chan_set_next_descriptor(struct iop_adma_chan *chan,
      u32 next_desc_addr)
{
 int id = chan->device->id;

 switch (id) {
 case 129:
 case 128:
  __raw_writel(next_desc_addr, DMA_NDAR(chan));
  break;
 case 130:
  __raw_writel(next_desc_addr, AAU_ANDAR(chan));
  break;
 }

}
