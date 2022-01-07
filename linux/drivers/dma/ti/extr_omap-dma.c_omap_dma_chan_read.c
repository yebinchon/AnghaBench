
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dma_reg {scalar_t__ offset; int type; } ;
struct omap_chan {scalar_t__ channel_base; struct omap_dma_reg* reg_map; } ;


 int omap_dma_read (int ,scalar_t__) ;

__attribute__((used)) static unsigned omap_dma_chan_read(struct omap_chan *c, unsigned reg)
{
 const struct omap_dma_reg *r = c->reg_map + reg;

 return omap_dma_read(r->type, c->channel_base + r->offset);
}
