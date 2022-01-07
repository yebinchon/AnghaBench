
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int id; } ;


 int AAU_ADAR (struct iop_adma_chan*) ;

 int BUG () ;


 int DMA_DAR (struct iop_adma_chan*) ;
 int __raw_readl (int ) ;

__attribute__((used)) static inline u32 iop_chan_get_current_descriptor(struct iop_adma_chan *chan)
{
 int id = chan->device->id;

 switch (id) {
 case 129:
 case 128:
  return __raw_readl(DMA_DAR(chan));
 case 130:
  return __raw_readl(AAU_ADAR(chan));
 default:
  BUG();
 }
 return 0;
}
