
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dist_base; } ;


 int CONFIG_ARM_GIC_V3_ITS ;
 scalar_t__ GICD_TYPER ;
 int GICD_TYPER_LPIS ;
 scalar_t__ IS_ENABLED (int ) ;
 TYPE_1__ gic_data ;
 int gicv3_nolpi ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int gic_dist_supports_lpis(void)
{
 return (IS_ENABLED(CONFIG_ARM_GIC_V3_ITS) &&
  !!(readl_relaxed(gic_data.dist_base + GICD_TYPER) & GICD_TYPER_LPIS) &&
  !gicv3_nolpi);
}
