
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dmadev {scalar_t__ base; struct omap_dma_reg* reg_map; } ;
struct omap_dma_reg {scalar_t__ offset; int type; int stride; } ;


 int WARN_ON (int ) ;
 int omap_dma_write (unsigned int,int ,scalar_t__) ;

__attribute__((used)) static void omap_dma_glbl_write(struct omap_dmadev *od, unsigned reg, unsigned val)
{
 const struct omap_dma_reg *r = od->reg_map + reg;

 WARN_ON(r->stride);

 omap_dma_write(val, r->type, od->base + r->offset);
}
