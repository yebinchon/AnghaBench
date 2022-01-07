
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tegra_adma {TYPE_1__* cdata; scalar_t__ base_addr; } ;
struct TYPE_2__ {scalar_t__ global_reg_offset; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void tdma_write(struct tegra_adma *tdma, u32 reg, u32 val)
{
 writel(val, tdma->base_addr + tdma->cdata->global_reg_offset + reg);
}
