
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_dmac {scalar_t__ iomem; } ;


 scalar_t__ RCAR_DMAOR ;
 int writel (scalar_t__,scalar_t__) ;
 int writew (scalar_t__,scalar_t__) ;

__attribute__((used)) static void rcar_dmac_write(struct rcar_dmac *dmac, u32 reg, u32 data)
{
 if (reg == RCAR_DMAOR)
  writew(data, dmac->iomem + reg);
 else
  writel(data, dmac->iomem + reg);
}
