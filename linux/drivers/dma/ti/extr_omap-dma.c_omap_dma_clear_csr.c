
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_chan {int dummy; } ;


 int CSR ;
 scalar_t__ dma_omap1 () ;
 int omap_dma_chan_read (struct omap_chan*,int ) ;
 int omap_dma_chan_write (struct omap_chan*,int ,int ) ;

__attribute__((used)) static void omap_dma_clear_csr(struct omap_chan *c)
{
 if (dma_omap1())
  omap_dma_chan_read(c, CSR);
 else
  omap_dma_chan_write(c, CSR, ~0);
}
