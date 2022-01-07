
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct exynos_dsi {TYPE_1__* driver_data; scalar_t__ reg_base; } ;
typedef enum reg_idx { ____Placeholder_reg_idx } reg_idx ;
struct TYPE_2__ {scalar_t__* reg_ofs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void exynos_dsi_write(struct exynos_dsi *dsi, enum reg_idx idx,
        u32 val)
{

 writel(val, dsi->reg_base + dsi->driver_data->reg_ofs[idx]);
}
