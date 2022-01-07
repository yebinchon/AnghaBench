
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_dmac {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static int axi_dmac_read(struct axi_dmac *axi_dmac, unsigned int reg)
{
 return readl(axi_dmac->base + reg);
}
