
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iop_adma_chan {int dummy; } ;


 int DMA_CSR (struct iop_adma_chan*) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static inline void iop_adma_device_clear_eot_status(struct iop_adma_chan *chan)
{
 u32 status = __raw_readl(DMA_CSR(chan));
 status &= (1 << 9);
 __raw_writel(status, DMA_CSR(chan));
}
