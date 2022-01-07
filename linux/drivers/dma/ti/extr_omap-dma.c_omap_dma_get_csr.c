
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_chan {int dummy; } ;


 int CSR ;
 int dma_omap1 () ;
 unsigned int omap_dma_chan_read (struct omap_chan*,int ) ;
 int omap_dma_chan_write (struct omap_chan*,int ,unsigned int) ;

__attribute__((used)) static unsigned omap_dma_get_csr(struct omap_chan *c)
{
 unsigned val = omap_dma_chan_read(c, CSR);

 if (!dma_omap1())
  omap_dma_chan_write(c, CSR, val);

 return val;
}
