
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_context {int dummy; } ;


 int EXYNOS_CIGCTRL ;
 int EXYNOS_CIGCTRL_IRQ_CLR ;
 int fimc_set_bits (struct fimc_context*,int ,int ) ;

__attribute__((used)) static void fimc_clear_irq(struct fimc_context *ctx)
{
 fimc_set_bits(ctx, EXYNOS_CIGCTRL, EXYNOS_CIGCTRL_IRQ_CLR);
}
