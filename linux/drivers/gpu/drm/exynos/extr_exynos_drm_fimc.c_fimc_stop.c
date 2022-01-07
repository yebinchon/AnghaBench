
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dummy; } ;


 int EXYNOS_CIFCNTSEQ ;
 int EXYNOS_CIGCTRL ;
 int EXYNOS_CIGCTRL_IRQ_END_DISABLE ;
 int EXYNOS_CIIMGCPT ;
 int EXYNOS_CIIMGCPT_IMGCPTEN ;
 int EXYNOS_CIIMGCPT_IMGCPTEN_SC ;
 int EXYNOS_CISCCTRL ;
 int EXYNOS_CISCCTRL_SCALERSTART ;
 int EXYNOS_MSCTRL ;
 int EXYNOS_MSCTRL_ENVID ;
 int EXYNOS_MSCTRL_INPUT_MASK ;
 int fimc_clear_bits (struct fimc_context*,int ,int) ;
 int fimc_mask_irq (struct fimc_context*,int) ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_set_bits (struct fimc_context*,int ,int ) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static void fimc_stop(struct fimc_context *ctx)
{
 u32 cfg;


 cfg = fimc_read(ctx, EXYNOS_MSCTRL);
 cfg &= ~EXYNOS_MSCTRL_INPUT_MASK;
 cfg &= ~EXYNOS_MSCTRL_ENVID;
 fimc_write(ctx, cfg, EXYNOS_MSCTRL);

 fimc_mask_irq(ctx, 0);


 fimc_write(ctx, 0x0, EXYNOS_CIFCNTSEQ);


 fimc_clear_bits(ctx, EXYNOS_CISCCTRL, EXYNOS_CISCCTRL_SCALERSTART);


 fimc_clear_bits(ctx, EXYNOS_CIIMGCPT,
  EXYNOS_CIIMGCPT_IMGCPTEN_SC | EXYNOS_CIIMGCPT_IMGCPTEN);


 fimc_set_bits(ctx, EXYNOS_CIGCTRL, EXYNOS_CIGCTRL_IRQ_END_DISABLE);
}
