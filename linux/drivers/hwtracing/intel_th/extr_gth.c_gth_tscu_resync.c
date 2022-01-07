
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gth_device {scalar_t__ base; } ;


 scalar_t__ REG_TSCU_TSUCTRL ;
 int TSUCTRL_CTCRESYNC ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void gth_tscu_resync(struct gth_device *gth)
{
 u32 reg;

 reg = ioread32(gth->base + REG_TSCU_TSUCTRL);
 reg &= ~TSUCTRL_CTCRESYNC;
 iowrite32(reg, gth->base + REG_TSCU_TSUCTRL);
}
