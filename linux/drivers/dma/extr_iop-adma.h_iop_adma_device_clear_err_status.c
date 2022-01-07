
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int id; } ;



 int BUG () ;


 int DMA_CSR (struct iop_adma_chan*) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static inline void iop_adma_device_clear_err_status(struct iop_adma_chan *chan)
{
 u32 status = __raw_readl(DMA_CSR(chan));

 switch (chan->device->id) {
 case 129:
 case 128:
  status &= (1 << 5) | (1 << 3) | (1 << 2) | (1 << 1);
  break;
 case 130:
  status &= (1 << 5);
  break;
 default:
  BUG();
 }

 __raw_writel(status, DMA_CSR(chan));
}
