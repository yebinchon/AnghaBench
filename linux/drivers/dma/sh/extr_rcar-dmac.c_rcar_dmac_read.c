
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_dmac {scalar_t__ iomem; } ;


 scalar_t__ RCAR_DMAOR ;
 scalar_t__ readl (scalar_t__) ;
 scalar_t__ readw (scalar_t__) ;

__attribute__((used)) static u32 rcar_dmac_read(struct rcar_dmac *dmac, u32 reg)
{
 if (reg == RCAR_DMAOR)
  return readw(dmac->iomem + reg);
 else
  return readl(dmac->iomem + reg);
}
