
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iop_adma_chan {int dummy; } ;


 int DMA_CSR (struct iop_adma_chan*) ;
 int __raw_readl (int ) ;

__attribute__((used)) static inline u32 iop_chan_get_status(struct iop_adma_chan *chan)
{
 return __raw_readl(DMA_CSR(chan));
}
