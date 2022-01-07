
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_dmac {scalar_t__ base; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void axi_dmac_write(struct axi_dmac *axi_dmac, unsigned int reg,
 unsigned int val)
{
 writel(val, axi_dmac->base + reg);
}
