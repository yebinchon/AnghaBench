
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iop_adma_chan {int dummy; } ;


 int DMA_CSR (struct iop_adma_chan*) ;
 int IOP_ADMA_STATUS_BUSY ;
 int __raw_readl (int ) ;

__attribute__((used)) static inline int iop_chan_is_busy(struct iop_adma_chan *chan)
{
 u32 status = __raw_readl(DMA_CSR(chan));
 return (status & IOP_ADMA_STATUS_BUSY) ? 1 : 0;
}
