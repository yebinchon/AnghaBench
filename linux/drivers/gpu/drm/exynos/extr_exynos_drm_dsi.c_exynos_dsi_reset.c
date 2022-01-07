
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct exynos_dsi {int completed; TYPE_1__* driver_data; } ;
struct TYPE_2__ {int * reg_values; } ;


 int DSIM_SWRST_REG ;
 size_t RESET_TYPE ;
 int exynos_dsi_write (struct exynos_dsi*,int ,int ) ;
 int reinit_completion (int *) ;

__attribute__((used)) static void exynos_dsi_reset(struct exynos_dsi *dsi)
{
 u32 reset_val = dsi->driver_data->reg_values[RESET_TYPE];

 reinit_completion(&dsi->completed);
 exynos_dsi_write(dsi, DSIM_SWRST_REG, reset_val);
}
